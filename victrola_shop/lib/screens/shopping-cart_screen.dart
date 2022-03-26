import 'package:flutter/material.dart';

import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/static-data/product_data.dart';
import 'package:victrola_shop/widgets/cart_item.dart';

class ShoppingCartScreen extends StatelessWidget {
  ShoppingCartScreen({Key? key}) : super(key: key);

  static const routeName = '/cart';
  final cartData = DatabaseHelper.userInstance!.cart.entries;

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(title: const Text('Victrola Shop')),
      body: ListView.builder(
        itemCount: cartData.length,
        itemBuilder: (context, index) {
          final cartItem = cartData.elementAt(index);
          final product = BASE_PRODUCT_LINE[cartItem.key];
          // return widget for each shopping cart item
          return CartItem(product: product, quantity: cartItem.value);
        }
      )
    );
  }
}