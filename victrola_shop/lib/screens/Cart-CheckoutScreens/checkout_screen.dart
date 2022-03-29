import 'package:flutter/material.dart';

import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/edit_payment_screen.dart';
import 'package:victrola_shop/models/user_profile.dart';
import 'package:victrola_shop/screens/Cart-CheckoutScreens/order-confirmed_screen.dart';
import 'package:victrola_shop/screens/Cart-CheckoutScreens/select_address_dialog.dart';
import 'package:victrola_shop/screens/Cart-CheckoutScreens/select_payment_dialog.dart';
import 'package:victrola_shop/screens/edit_address_sceen.dart';
import 'package:victrola_shop/static-data/product_data.dart';

class CheckoutScreen extends StatefulWidget {
  
  CheckoutScreen({Key? key}) : super(key: key) {}
  
  
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  
  static String routeName = '/checkout';
  final cartData = DatabaseHelper.userInstance!.cart.entries;
  final userProfileData = DatabaseHelper.userInstance!.profiles[0];
  List<PaymentInfo> get userPaymentInfo => userProfileData.paymentInfo;
  final shippingFeePercent = 0.03;
  final taxPercent = 0.04;
  var cartSubtotal = 0.0;
  var cartTotal = 0.0;
  var paymentIndex = 0;
  var addressIndex = 0;
  
  @override
  void initState() {
    // userPaymentInfo = userProfileData.paymentInfo;
    for (var item in cartData) {
      cartSubtotal += BASE_PRODUCT_LINE[item.key].price;
    }
    
    cartTotal = cartSubtotal + (cartSubtotal * shippingFeePercent) + (cartSubtotal * taxPercent);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Totals at the top
                SizedBox(height: 15.0),
                Text('Final Total: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.24,
                  width: MediaQuery.of(context).size.width - 50,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Text('SubTotal'),
                        trailing: Text('\$${cartSubtotal.toStringAsFixed(2)}'),
                      ),
                      ListTile(
                        leading: Text('Shipping Fee'),
                        trailing: Text('\$${(cartSubtotal * shippingFeePercent).toStringAsFixed(2)}'),
                      ),
                      ListTile(
                        leading: Text('Taxes'),
                        trailing: Text('\$${(cartSubtotal * taxPercent).toStringAsFixed(2)}'),
                      ),
                      ListTile(
                        leading: Text('Total (with tax)'),
                        trailing: Text('\$${cartTotal.toStringAsFixed(2)}'),
                      ) 
                    ],
                  )
                ),
                Divider(), 
                SizedBox(height: 15.0),

                // Payment Method
                Text('Payment Method: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width - 50,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.credit_card),
                        title: Text('Card ending in ${userPaymentInfo[paymentIndex].cardNumber.substring(userPaymentInfo[paymentIndex].cardNumber.length-4)}'),
                        subtitle: Text(userPaymentInfo[paymentIndex].billingAddress.streetAddress),
                      ),
                      ListTile(
                        title: TextButton(
                          child: Text('Change Payment Method'),
                          onPressed: () async {
                            int temp = await showDialog(
                              context: context,
                              builder: (context) => SelectPaymentDialog(paymentIndex: paymentIndex)
                            );

                            setState(() {
                              paymentIndex = temp;
                            });
                          }
                        )
                      ),
                      ListTile(
                        leading: Icon(Icons.add),
                        title: TextButton(
                          child: Text('Add new Payment'),
                          onPressed: () async {
                            PaymentInfo element = await Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => AddEditPaymentScreen())
                            );
                            
                            setState(() {
                              userProfileData.paymentInfo.add(element);
                              paymentIndex = userPaymentInfo.length - 1;
                            });
                          }
                        )
                      ), 
                    ],
                  )
                ),
                Divider(), 
                SizedBox(height: 15.0),

                // Shipping Info
                Text('Shipping Info: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width - 50,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.local_shipping),
                        title: Text(userProfileData.address[addressIndex].streetAddress),
                      ),
                      ListTile(
                        title: TextButton(
                          child: Text('Change Address'),
                          onPressed: () async {
                            int temp = await showDialog(
                              context: context,
                              builder: (context) => SelectAddressDialog(addressIndex: addressIndex)
                            );

                            setState(() {
                              addressIndex = temp;
                            });
                          }
                        )
                      ),
                      ListTile(
                        leading: Icon(Icons.add),
                        title: TextButton(
                          child: Text('Add new Address'),
                          onPressed: () async {
                            Address element = await Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => AddEditAddressScreen())
                            );
                            
                            setState(() {
                              userProfileData.address.add(element);
                              addressIndex = userProfileData.address.length - 1;
                            });
                          }
                        )
                      ) 
                    ],
                  )
                ),
                Divider(), 
                SizedBox(height: 5.0),

                // Go back to cart button
                ElevatedButton(
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                    minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0)),
                    // padding: MaterialStateProperty.all(EdgeInsets.all(8.0))
                  ),
                  // onPressed: () => Navigator.pushNamed(context, CheckoutScreen.routeName),
                  onPressed: () => Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => CheckoutScreen())),
                  child: Text('Go back to Cart')
                ), 

                SizedBox(width: 30.0),
                // Confirm order button
                ElevatedButton(
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                    minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0))
                  ),
                  // onPressed: () => Navigator.pushNamed(context, CheckoutScreen.routeName),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OrderConfirmedScreen(selectedAddress: userProfileData.address[addressIndex]))),
                  child: Text('Confirm Purchase')
                ),   
            ],
          ),
        )
      )
    );  
  }
}