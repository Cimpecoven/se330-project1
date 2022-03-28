import 'package:flutter/material.dart';
import 'package:victrola_shop/models/product.dart';

class CartItem extends StatelessWidget {
  CartItem({
    Key? key,
    required this.product,
    required this.quantity
  }) : super(key: key);

  final Product product;
  int quantity;

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
          subtitle: Row(children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                quantity--;
              }
            ),
            Text(quantity.toString()),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                quantity++;
              }
            )
          ]),
          trailing: IconButton(
            icon: Icon(Icons.cancel, color: Colors.red[700]),
            onPressed: () => {},
          ) // Cost/Remove button
        )
      ]
    );
  }
}