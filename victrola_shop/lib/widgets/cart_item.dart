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
          style: ListTileStyle.list,
          leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(product.imageUrls[0], fit: BoxFit.cover)
                  ), // Image of item
          title: Text(product.productName),
          subtitle: Text('boo'),
                    // SizedBox(width: MediaQuery.of(context).size.width * 0.5) // Quantity section
          trailing: IconButton(
            icon: Icon(Icons.cancel, color: Colors.red[700]),
            onPressed: () => {},
          ) // Cost/Remove button
        )
      ]
    );
  }
}