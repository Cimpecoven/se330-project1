// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/screens/Cart-CheckoutScreens/checkout_screen.dart';
import 'package:victrola_shop/static-data/product_data.dart';
import 'package:victrola_shop/widgets/cart_item.dart';

class ShoppingCartScreen extends StatefulWidget {
    ShoppingCartScreen({Key? key}) : super(key: key) {}

    static String routeName = '/cart';

    @override
    State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  List<MapEntry<int, int>> get cartData => DatabaseHelper.userInstance!.cart.entries.toList();
  final shippingFeePercent = 0.03;
  final taxPercent = 0.04;
  var cartSubtotal = 0.0;
  var cartTotal = 0.0;
  
  @override
  void initState() {
    for (var item in cartData) {
      cartSubtotal += BASE_PRODUCT_LINE[item.key].price * item.value;
    }
    cartTotal = cartSubtotal + (cartSubtotal * shippingFeePercent) + (cartSubtotal * taxPercent);

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Column(
          children: [
            // Header at the top
            Container(
              height: 100.0,
              child: Row(
                children: [
                  Icon(Icons.shopping_cart),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Shopping Cart'),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: Text('Remove All'),
                      onPressed: () => setState(() {
                        DatabaseHelper.userInstance!.cart.clear();
                        cartSubtotal = 0.0;
                        cartTotal = 0.0;
                      })
                      // cartData.forEach((item) {
                      //     DatabaseHelper.instance.deleteCartItem(item.key);
                      //   }),
                    )
                  )
                ],
              ),
            ),

            // List of items in middle
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                itemCount: cartData.length,
                itemBuilder: (context, index) => 
                  ListTile(
                    style: ListTileStyle.list,
                    leading: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.network(BASE_PRODUCT_LINE[cartData[index].key].imageUrls[0], fit: BoxFit.cover)
                            ), // Image of item
                    title: Text(BASE_PRODUCT_LINE[cartData[index].key].productName),
                    subtitle: Row(children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => setState(() {
                          DatabaseHelper.userInstance!.cart.update(cartData[index].key, (value) => value-1);
                          cartSubtotal -= BASE_PRODUCT_LINE[cartData[index].key].price;
                          cartTotal = cartSubtotal + (cartSubtotal * shippingFeePercent) + (cartSubtotal * taxPercent);
                        })
                      ),
                      Text(DatabaseHelper.userInstance!.cart[cartData[index].key].toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () => setState(() {
                          DatabaseHelper.userInstance!.cart.update(cartData[index].key, (value) => value+1);
                          cartSubtotal += BASE_PRODUCT_LINE[cartData[index].key].price;
                          cartTotal = cartSubtotal + (cartSubtotal * shippingFeePercent) + (cartSubtotal * taxPercent);
                        })
                      )
                    ]),
                    trailing: IconButton(
                      icon: Icon(Icons.cancel, color: Colors.red[700]),
                      onPressed: () => setState(() {
                        int numberRemoved = DatabaseHelper.userInstance!.cart.remove(cartData[index].key)!;
                        cartSubtotal -= BASE_PRODUCT_LINE[cartData[index].key].price * numberRemoved;
                        cartTotal = cartSubtotal + (cartSubtotal * shippingFeePercent) + (cartSubtotal * taxPercent);
                      }),
                    ) // Cost/Remove button
                  )
              ),
            ),
            Divider(),

            // Footer with buttons at the bottom
            Container(
              height: MediaQuery.of(context).size.height * 0.24,
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

            // Proceed to checkout button
            ElevatedButton(
              style: ButtonStyle(
                alignment: Alignment.center,
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0))
              ),
              // onPressed: () => Navigator.pushNamed(context, CheckoutScreen.routeName),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CheckoutScreen())),
              child: Text('Proceed to Checkout')
            ),     
          ],
        ),
      )
    );  
  }
}
