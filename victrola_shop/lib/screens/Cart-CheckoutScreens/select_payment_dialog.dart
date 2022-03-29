import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/models/user_profile.dart';

// Partial Credit: https://stackoverflow.com/questions/56806136/pop-up-dialog-box-on-pressing-button-in-flutter
class SelectPaymentDialog extends StatelessWidget {
  SelectPaymentDialog({ Key? key }) : super(key: key);

  final userProfile = DatabaseHelper.userInstance!.profiles[0];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      elevation: 16,
      child: Container(
        child: ListView.builder(
          itemCount: userProfile.paymentInfo.length,
          shrinkWrap: true,
          itemBuilder: (context, index) =>_buildRow(userProfile.paymentInfo[index])
        ),
      ),
    );
  }

  Widget _buildRow(PaymentInfo paymentInfo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 12),
          Text('Change Credit Card:'),
          SizedBox(height: 12),
          Container(height: 2, color: Colors.blueGrey),
          Row(
            children: <Widget>[
              Icon(Icons.credit_card),
              SizedBox(width: 12),
              Text('Card ending in ${paymentInfo.cardNumber.substring(paymentInfo.cardNumber.length-4)}'),
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