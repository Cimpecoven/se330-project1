// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/static-data/product_data.dart';
import 'package:victrola_shop/widgets/cart_item.dart';

class ShoppingCartScreen extends StatelessWidget {
  
  static String routeName = '/cart';
  final cartData = DatabaseHelper.userInstance!.cart.entries;
  final shippingFeePercent = 0.03;
  final taxPercent = 0.04;
  var cartSubtotal = 0.0;
  var cartTotal = 0.0;
  
  ShoppingCartScreen({Key? key}) : super(key: key) {
    for (var item in cartData) {
      cartSubtotal += BASE_PRODUCT_LINE[item.key].price;
    }
    
    cartTotal = cartSubtotal + (cartSubtotal * shippingFeePercent) + (cartSubtotal * taxPercent);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          body: Column(
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text('Remove All'),
                        onPressed: () => cartData.forEach((item) {
                            DatabaseHelper.instance.deleteCartItem(item.key);
                          }),
                      )
                    )
                  ],
                ),
              ),

              // List of items in middle
              ListView.builder(
                itemCount: cartData.length,
                itemBuilder: (context, index) {
                  final cartItem = cartData.elementAt(index);
                  final product = BASE_PRODUCT_LINE[cartItem.key];
                  // return widget for each shopping cart item
                  return CartItem(product: product, quantity: cartItem.value);
                }
              ),

              // Footer with buttons at the bottom
              Container(
                height: 100.0,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Text('SubTotal'),
                      trailing: Text('\$$cartSubtotal'),
                    ),
                    ListTile(
                      leading: Text('Shipping Fee'),
                      trailing: Text('\$${cartSubtotal * shippingFeePercent}'),
                    ),
                    ListTile(
                      leading: Text('Taxes'),
                      trailing: Text('\$${cartSubtotal * taxPercent}'),
                    ),
                    ListTile(
                      leading: Text('SubTotal'),
                      trailing: Text('\$$cartTotal'),
                    ) 
                  ],
                )
              ),

              // Proceed to checkout button
              TextButton(
                style: ButtonStyle(
                  alignment: Alignment.center
                ),
                onPressed: onPressed,
                child: child
              ),     
            ],
          ),
        )
    );  
  }
}


// import 'package:flutter/material.dart';

// import 'package:victrola_shop/database/user_dbhelper.dart';
// import 'package:victrola_shop/static-data/product_data.dart';
// import 'package:victrola_shop/widgets/cart_item.dart';

// class ShoppingCartScreen extends StatelessWidget {
//   ShoppingCartScreen({Key? key}) : super(key: key);

//   static const routeName = '/cart';
//   final cartData = DatabaseHelper.userInstance!.cart.entries;

//   @override
//   Widget build(BuildContext context) {    
//     return Scaffold(
//       appBar: AppBar(title: const Text('Victrola Shop')),
//       body: ListView.builder(
//         itemCount: cartData.length,
//         itemBuilder: (context, index) {
//           final cartItem = cartData.elementAt(index);
//           final product = BASE_PRODUCT_LINE[cartItem.key];
//           // return widget for each shopping cart item
//           return CartItem(product: product, quantity: cartItem.value);
//         }
//       )
//     );
//   }
// }