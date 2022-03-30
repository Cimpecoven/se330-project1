import 'package:flutter/material.dart';
import 'package:victrola_shop/models/user_profile.dart';
class AddEditAddressScreen extends StatefulWidget {
  const AddEditAddressScreen({ Key? key }) : super(key: key);

  @override
  State<AddEditAddressScreen> createState() => _AddEditAddressScreenState();
}

class _AddEditAddressScreenState extends State<AddEditAddressScreen> {

  final _addressFormKey = GlobalKey<_AddEditAddressScreenState>();

  String streetAddress = '';
  String state = '';
  String zipCode = '';

  // _stateEnumToString(StatesUS stateEnum) {
  //   state = 
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Victrola Shop'),
      ),
      body: Form(
        child: Column(
          children: [
            
            // TextFormField(
            // decoration: const InputDecoration(
            //   labelText: 'Name of Resident',
            //   hintText: 'Guy Example',
            // ),

            // //   validator: (value) {
            // //     if (value == null || value.isEmpty) {
            // //       return 'Please enter some text';
            // //     }
            // //     else if ()
            // //     return null;
            // //   },
            // ),

            TextFormField(
            decoration: const InputDecoration(
              labelText: 'Street Address',
              hintText: '123 Sesame St. New York City',
            ),
            onChanged: (value) => setState(() {
              streetAddress = value;
            }),
            //   validator: (value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Please enter some text';
            //     }
            //     else if ()
            //     return null;
            //   },
            ),

            DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'State',
              // hintText: '',
            ),
            items: USStates.entries.map((e) => DropdownMenuItem<String>(value: e.value, child: Text(e.value))).toList(),
            // menuMaxHeight: 50.0,
            icon: const Icon(Icons.arrow_downward),
            value: state,
            onChanged: (String? value) => setState(() {
              state = value!;
            }),
            //   validator: (value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Please enter some text';
            //     }
            //     else if ()
            //     return null;
            //   },
            ),

            TextFormField(
            decoration: const InputDecoration(
              labelText: 'Zip Code',
              hintText: 'Five-digit number',
            ),
            onChanged: (value) => setState(() {
              zipCode = value;
            }),
            //   validator: (value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Please enter some text';
            //     }
            //     else if ()
            //     return null;
            //   },
            ),

            ElevatedButton(
              style: ButtonStyle(
                alignment: Alignment.center,
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0)),
                // padding: MaterialStateProperty.all(EdgeInsets.all(8.0))
              ),
              // onPressed: () => Navigator.pushNamed(context, CheckoutScreen.routeName),
              onPressed: () => Navigator.of(context).pop(
                Address(type: AddressType.shipping, streetAddress: streetAddress, state: state, zipCode: zipCode)
              ),
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
            )
          ]
        )
      )
    );
  }
}