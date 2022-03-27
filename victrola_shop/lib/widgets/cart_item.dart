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
    return Column(
      children: <Widget>[
        ListTile(
          leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(product.imageUrls[0], fit: BoxFit.cover)
                  ), // Image of item
          title: Text(product.productName),
          subtitle: Text(quantity.toString()), // Quantity section
          trailing: Text('test'), // Cost/Remove button
        )
      ]
    );
  }
}