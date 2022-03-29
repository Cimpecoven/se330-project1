import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/models/product.dart';
import 'package:victrola_shop/static-data/product_data.dart';

class CartItem extends StatefulWidget {
  CartItem({
    Key? key,
    required this.cartIndex,
    required this.productIndex
  }) : super(key: key);

  final int cartIndex;
  final int productIndex;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  Product? product = null;

  @override
  void initState() {
    product = BASE_PRODUCT_LINE[widget.productIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          style: ListTileStyle.list,
          leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network(product!.imageUrls[0], fit: BoxFit.cover)
                  ), // Image of item
          title: Text(product!.productName),
          subtitle: Row(children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () => setState(() {
                DatabaseHelper.userInstance!.cart.update(widget.cartIndex, (value) => value-1);
              })
            ),
            Text(DatabaseHelper.userInstance!.cart[widget.cartIndex].toString()),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => setState(() {
                DatabaseHelper.userInstance!.cart.update(widget.cartIndex, (value) => value+1);
              })
            )
          ]),
          trailing: IconButton(
            icon: Icon(Icons.cancel, color: Colors.red[700]),
            onPressed: () => setState(() {
              DatabaseHelper.userInstance!.cart.remove(widget.cartIndex);
            }),
          ) // Cost/Remove button
        )
      ]
    );
  }
}