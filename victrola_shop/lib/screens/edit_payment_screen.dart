import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:sqflite/sqflite.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';

import '../models/user_profile.dart';

class AddEditPaymentScreen extends StatefulWidget {
  const AddEditPaymentScreen({ Key? key }) : super(key: key);

  

  @override
  State<AddEditPaymentScreen> createState() => _AddEditPaymentScreenState();
}

class _AddEditPaymentScreenState extends State<AddEditPaymentScreen> {

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
   
    super.initState();
  }

void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
    });
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Victrola Shop'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: false, 
              onCreditCardWidgetChange: (brand) {},
              cardBgColor: Colors.blueGrey,
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (model) => onCreditCardModelChange(model),
              themeColor: Colors.blueGrey,
              formKey: formKey
            ),

            ElevatedButton(
              style: ButtonStyle(
                alignment: Alignment.center,
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0)),
                // padding: MaterialStateProperty.all(EdgeInsets.all(8.0))
              ),

              onPressed: () => Navigator.of(context).pop(
                PaymentInfo(
                  cardNumber: cardNumber,
                  expirationDate: DateTime.now(), // TODO
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  billingAddress: DatabaseHelper.userInstance!.profiles[0].address[0] // TODO
                )),
              child: Text('Submit')
            ),

            ElevatedButton(
              style: ButtonStyle(
                alignment: Alignment.center,
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                minimumSize: MaterialStateProperty.all(Size((MediaQuery.of(context).size.width * 0.5), 40.0)),
                // padding: MaterialStateProperty.all(EdgeInsets.all(8.0))
              ),

              onPressed: () => Navigator.of(context).pop(MaterialPageRoute(
                    builder: (context) => AddEditPaymentScreen())),
              child: Text('Go back')
            ), 
          ],
        ),
      )
    );
  }
}