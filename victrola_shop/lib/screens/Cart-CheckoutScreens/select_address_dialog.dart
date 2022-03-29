import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/models/user_profile.dart';

// Partial Credit: https://stackoverflow.com/questions/56806136/pop-up-dialog-box-on-pressing-button-in-flutter
class SelectAddressDialog extends StatelessWidget {
  SelectAddressDialog({ Key? key, required this.addressIndex }) : super(key: key);

  final int addressIndex;

  final userProfile = DatabaseHelper.userInstance!.profiles[0];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      elevation: 16,
      child: Container(
        child: ListView.builder(
          itemCount: userProfile.address.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 12),
                Text('Change Address:'),
                SizedBox(height: 12),
                Container(height: 2, color: Colors.blueGrey),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, index),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.local_shipping),
                      SizedBox(width: 12),
                      Text(userProfile.address[index].streetAddress),
                      Container(height: 2, color: Colors.blueGrey),
                      SizedBox(height: 12),
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }

  Widget _buildRow(Address address) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Text('Change Address:'),
          SizedBox(height: 12),
          Container(height: 2, color: Colors.blueGrey),
          Row(
            children: <Widget>[
              Icon(Icons.local_shipping),
              SizedBox(width: 12),
              Text(address.streetAddress),
              Container(height: 2, color: Colors.blueGrey),
              SizedBox(height: 12),
            ],
          ),

          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
    );
  }
}