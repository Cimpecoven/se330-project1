import 'package:flutter/material.dart';

import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/edit_payment_screen.dart';
import 'package:victrola_shop/models/user_profile.dart';
import 'package:victrola_shop/screens/Cart-CheckoutScreens/order-confirmed_screen.dart';
import 'package:victrola_shop/screens/Cart-CheckoutScreens/select_address_dialog.dart';
import 'package:victrola_shop/screens/Cart-CheckoutScreens/select_payment_dialog.dart';
import 'package:victrola_shop/screens/edit_address_sceen.dart';
import 'package:victrola_shop/static-data/product_data.dart';

class CheckoutScreen extends StatelessWidget {

  static String routeName = '/checkout';
  final cartData = DatabaseHelper.userInstance!.cart.entries;
  final userProfileData = DatabaseHelper.userInstance!.profiles[0];
  List<PaymentInfo> userPaymentInfo = const [];
  final shippingFeePercent = 0.03;
  final taxPercent = 0.04;
  var cartSubtotal = 0.0;
  var cartTotal = 0.0;
  
  CheckoutScreen({Key? key}) : super(key: key) {
    userPaymentInfo = userProfileData.paymentInfo;
    for (var item in cartData) {
      cartSubtotal += BASE_PRODUCT_LINE[item.key].price;
    }
    
    cartTotal = cartSubtotal + (cartSubtotal * shippingFeePercent) + (cartSubtotal * taxPercent);
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
                        title: Text('Card ending in ${userPaymentInfo[0].cardNumber.substring(userPaymentInfo[0].cardNumber.length-4)}'),
                        subtitle: Text(userPaymentInfo[0].billingAddress.streetAddress),
                      ),
                      ListTile(
                        title: TextButton(
                          child: Text('Change Payment Method'),
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) {
                              return new SelectPaymentDialog();
                            }
                          )
                        )
                      ),
                      ListTile(
                        leading: Icon(Icons.add),
                        title: TextButton(
                          child: Text('Add new Payment'),
                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddEditPaymentScreen())),
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
                        title: Text(userProfileData.address[0].streetAddress),
                      ),
                      ListTile(
                        title: TextButton(
                          child: Text('Add new Address'),
                          onPressed: () => showDialog(
                            context: context,
                            builder: (context) {
                              return new SelectAddressDialog();
                            }
                          )
                        )
                      ),
                      ListTile(
                        leading: Icon(Icons.add),
                        title: TextButton(
                          child: Text('Add new Address'),
                          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddEditAddressScreen())),
                        )
                      ), 
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
                        builder: (context) => OrderConfirmedScreen(selectedAddress: userProfileData.address[0]))),
                  child: Text('Confirm Purchase')
                ),   
            ],
          ),
        )
      )
    );  
  }
}