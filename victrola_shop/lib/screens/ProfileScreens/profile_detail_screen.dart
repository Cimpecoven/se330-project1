// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:victrola_shop/database/user_dbhelper.dart';

class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({Key? key, required this.i}) : super(key: key);
  final int i;
  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Victrola Shop'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  'Profile Information',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                          bottom: 8.0,
                        ),
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          bottom: 8.0,
                        ),
                        child: Text(
                          DatabaseHelper
                                  .userInstance!.profiles[widget.i].firstName +
                              ' ' +
                              DatabaseHelper
                                  .userInstance!.profiles[widget.i].lastName,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Spacer(),
                  Container(
                    //padding: EdgeInsets.only(left: 100),
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'Change',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Color.fromARGB(255, 126, 124, 124))),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                          bottom: 8.0,
                        ),
                        child: Text(
                          'Address',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          bottom: 8.0,
                        ),
                        child: Text(
                          DatabaseHelper.userInstance!.profiles[widget.i]
                                  .address[0].streetAddress.isNotEmpty
                              ? DatabaseHelper.userInstance!.profiles[widget.i]
                                  .address[0].streetAddress
                              : '',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          bottom: 8.0,
                        ),
                        child: Text(
                          DatabaseHelper.userInstance!.profiles[widget.i]
                                  .address[0].state.isNotEmpty
                              ? DatabaseHelper.userInstance!.profiles[widget.i]
                                      .address[0].state +
                                  '  ' +
                                  DatabaseHelper.userInstance!
                                      .profiles[widget.i].address[0].zipCode
                              : '',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Spacer(),
                  Container(
                    //padding: EdgeInsets.only(left: 100),
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'Change',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Color.fromARGB(255, 126, 124, 124))),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                          bottom: 8.0,
                        ),
                        child: Text(
                          'Payment',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.0,
                          bottom: 8.0,
                        ),
                        child: Text(
                          DatabaseHelper.userInstance!.profiles[widget.i]
                                  .paymentInfo[0].cardNumber.isNotEmpty
                              ? DatabaseHelper.userInstance!.profiles[widget.i]
                                  .paymentInfo[0].cardNumber
                              : '',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.0,
                          left: 20.0,
                          bottom: 8.0,
                        ),
                        child: Text(
                          DatabaseHelper.userInstance!.profiles[widget.i]
                                      .paymentInfo[0].billingAddress !=
                                  ''
                              ? DatabaseHelper
                                      .userInstance!
                                      .profiles[widget.i]
                                      .paymentInfo[0]
                                      .billingAddress
                                      .streetAddress +
                                  '\n' +
                                  DatabaseHelper
                                      .userInstance!
                                      .profiles[widget.i]
                                      .paymentInfo[0]
                                      .billingAddress
                                      .state +
                                  ' ' +
                                  DatabaseHelper
                                      .userInstance!
                                      .profiles[widget.i]
                                      .paymentInfo[0]
                                      .billingAddress
                                      .zipCode
                              : '',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    //padding: EdgeInsets.only(left: 100),
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'Change',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Color.fromARGB(255, 126, 124, 124))),
            ),
          ],
        ),
      ),
    );
  }
}
