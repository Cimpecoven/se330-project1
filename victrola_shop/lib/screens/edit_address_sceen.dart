import 'package:flutter/material.dart';
class AddEditAddressScreen extends StatelessWidget {
  const AddEditAddressScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                    minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0)),
                    // padding: MaterialStateProperty.all(EdgeInsets.all(8.0))
                  ),
                  // onPressed: () => Navigator.pushNamed(context, CheckoutScreen.routeName),
                  onPressed: () => Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => AddEditAddressScreen())),
                  child: Text('Submit')
                ),

                ElevatedButton(
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                    minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0)),
                    // padding: MaterialStateProperty.all(EdgeInsets.all(8.0))
                  ),
                  // onPressed: () => Navigator.pushNamed(context, CheckoutScreen.routeName),
                  onPressed: () => Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => AddEditAddressScreen())),
                  child: Text('Go back')
                ), 
              ],
            ),
          )
      )
    );
  }
}