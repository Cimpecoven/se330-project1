import 'package:flutter/material.dart';
import 'package:overlay_container/overlay_container.dart';
import 'package:victrola_shop/models/user_profile.dart';
class AddEditAddressScreen extends StatefulWidget {
  const AddEditAddressScreen({ Key? key }) : super(key: key);

  @override
  State<AddEditAddressScreen> createState() => _AddEditAddressScreenState();
}

class _AddEditAddressScreenState extends State<AddEditAddressScreen> {

  final _addressFormKey = GlobalKey<_AddEditAddressScreenState>();

  String streetAddress = '';
  String selectedState = '';
  String zipCode = '';
  bool anyErrors = false;
  bool _dropdownShown = false;
  
  void _toggleDropdown() {
    setState(() {
      _dropdownShown = !_dropdownShown;
    });
  }

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

            TextFormField(
            decoration: const InputDecoration(
              labelText: 'State',
              hintText: 'SD',
            ),
            onChanged: (value) => setState(() {
              selectedState = value;
            }),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  anyErrors = true;
                  return 'Please enter some text.';
                }
                else if (value.length > 2)
                {
                  anyErrors = true;
                  return 'State initials only.';
                }
                else {
                  return null;
                }
              },
            ),


            // OverlayContainer(
            //   show: _dropdownShown,
            //   child: Container(
            //     height: 70,
            //     padding: const EdgeInsets.all(20),
            //     margin: const EdgeInsets.only(top: 5),
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       boxShadow: <BoxShadow>[
            //         BoxShadow(
            //           color: Colors.grey,
            //           blurRadius: 3,
            //           spreadRadius: 6,
            //         )
            //       ],
            //     ),
            //     child: Row(
            //       children: USStates.entries.map((e) { return DropdownMenuItem<String>(value: e.value, child: Text(e.value)); }).toList()
            //     ),
            //   ),
            // ),

            // OverlayContainer(
            //   child: DropdownButton<String>(
            //   items: ['SD', 'MN', 'IA', 'NE'].map((e) { return DropdownMenuItem<String>(value: e, child: Text(e)); }).toList(), //USStates.entries.map((e) { return DropdownMenuItem<String>(value: e.value, child: Text(e.value)); }).toList(),
            //   icon: const Icon(Icons.arrow_drop_down),
            //   value: selectedState,
            //   onChanged: (String? value) => setState(() {
            //     selectedState = value!;
            //   }),
            //   //   validator: (value) {
            //   //     if (value == null || value.isEmpty) {
            //   //       return 'Please enter some text';
            //   //     }
            //   //     else if ()
            //   //     return null;
            //   //   },
            //   )
            // ),

            // Center(
            //   child: DropdownButtonFormField<String>(
            //     value: state,
            //     icon: const Icon(Icons.arrow_downward),
            //     elevation: 16,
            //     style: const TextStyle(color: Colors.deepPurple),
            //     // underline: Container(
            //     //   height: 2,
            //     //   color: Colors.deepPurpleAccent,
            //     // ),
            //     onChanged: (String? newValue) {
            //       setState(() {
            //         state = newValue!;
            //       });
            //     },
            //     items: [DropdownMenuItem<String>(
            //           value: 'test',
            //           child: Text('test'),
            //         )
            //       ]
            //   )
            // ),

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
                Address(type: AddressType.shipping, streetAddress: streetAddress, state: selectedState, zipCode: zipCode)
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