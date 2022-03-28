import 'package:flutter/material.dart';

import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/screens/Cart-CheckoutScreens/order-confirmed_screen.dart';
import 'package:victrola_shop/static-data/product_data.dart';

class CheckoutScreen extends StatelessWidget {

  static String routeName = '/checkout';
  final cartData = DatabaseHelper.userInstance!.cart.entries;
  final shippingFeePercent = 0.03;
  final taxPercent = 0.04;
  var cartSubtotal = 0.0;
  var cartTotal = 0.0;
  
  CheckoutScreen({Key? key}) : super(key: key) {
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
                        title: Text('CrediCard ending in ****1234'),
                        subtitle: Text('*Address here'),
                      ),
                      ListTile(
                        title: Text('Change Payment Method'),
                      ),
                      ListTile(
                        leading: Icon(Icons.add),
                        title: Text('Add new Payment'),
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
                        leading: Icon(Icons.credit_card),
                        title: Text('123 Sesame St. New York City, NY 12345'),
                      ),
                      ListTile(
                        title: Text('Change Address Method'),
                      ),
                      ListTile(
                        leading: Icon(Icons.add),
                        title: Text('Add new Address'),
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
                        builder: (context) => OrderConfirmedScreen())),
                  child: Text('Confirm Purchase')
                ),   
            ],
          ),
        )
      )
    );  
  }
}