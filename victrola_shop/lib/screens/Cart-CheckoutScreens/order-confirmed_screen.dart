import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/models/user_profile.dart';


class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({
     Key? key,
     required this.selectedAddress
    }) : super(key: key);

  final Address selectedAddress;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text('Thank you for shopping with us!',
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38.0
                    ),
                  ),
                ),
                SizedBox(height: 15.0),

                Container(
                width: MediaQuery.of(context).size.height * 0.4,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.lightGreen[800]!, width: 10.0),
                    // borderRadius: BorderRadius.circular(50.0),
                    color: Colors.lightGreen[900]),
                    child: Icon(Icons.check, size: 150.0, color: Colors.green[600]),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text('Order Confirmed!', textAlign: TextAlign.center),
                ),
                SizedBox(height: 20.0),

                Center(
                  child: Row(
                    children: [
                      Icon(Icons.local_shipping),
                      Text(selectedAddress.streetAddress, textAlign: TextAlign.center)
                    ]
                  )
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                    minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0))
                  ),
                  onPressed: () {
                    Navigator.popUntil(context, (route) => false);
                    Navigator.of(context).pushNamed('/');
                  },
                  child: Text('Back to Home')
                ),   
              ]
            )
          )
        )
    );
  }
}