import 'package:flutter/material.dart';
import 'package:victrola_shop/models/product.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.product,
    required this.quantity
  }) : super(key: key);

  final Product product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}