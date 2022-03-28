import 'package:flutter/material.dart';


class OrderConfirmedScreen extends StatelessWidget {
  const OrderConfirmedScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text('Thank you for shopping with us!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38.0
                    ),
                  ),
                ),
                
                SizedBox(height: 15.0),

                Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.lightGreen[900]),
                    child: Icon(Icons.check, size: 38.0, color: Colors.green[700]),
                ),
                
                Center(
                  child: Text('Thank you for shopping with us!'),
                ),
                SizedBox(height: 15.0),

                ElevatedButton(
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                    minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0))
                  ),
                  // onPressed: () => Navigator.pushNamed(context, CheckoutScreen.routeName),
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