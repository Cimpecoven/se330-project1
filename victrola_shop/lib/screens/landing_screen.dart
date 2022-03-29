// ignore_for_file: unnecessary_new, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/Accessories_List.dart';
import 'ShopItemsScreens/Record_Players_List.dart';
import 'package:victrola_shop/main.dart';

import 'ShopItemsScreens/Vinyls_List.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  static String routeName = '/landing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Scaffold(
            body: SingleChildScrollView(
                child: new Column(children: [
      SizedBox(height: 10),
      new Stack(children: [
        new Container(
            height: 250,
            width: MediaQuery.of(context).size.width - 50,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage('images/Featured-Bundles_400x.jpg'),
                  fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 10,
                  blurRadius: 5,
                  offset: Offset(0, 7), // changes position of shadow
                ),
              ],
            ),
            child: new Align(
                alignment: Alignment.bottomLeft,
                child: new Text('   Featured Bundle of the Week \n',
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black.withOpacity(.6)))))
      ]),
      new Text(
        '\n\nWe bring lifelong music\nmemories into every home.\n\n',
        style: new TextStyle(
          fontSize: 20.0,
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      new Container(
        height: 75,
        color: Colors.blueGrey,
        width: MediaQuery.of(context).size.width,
        child: Text(
          '\nBrowse Our Selection',
          style: new TextStyle(
            fontSize: 28.0,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      new Container(
          height: 30,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('images/Down icon.png'),
            ),
            color: Colors.blueGrey,
          )),
      SizedBox(height: 50),
      new Stack(children: [
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RecordPlayersList()));
            },
            child: new Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 50,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage(
                          'images/Hawthorne-_-Lumineers-sq_400x.jpg'),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: new Align(
                    alignment: Alignment.bottomLeft,
                    child: new Text('   Record Players  \n',
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.black.withOpacity(.6))))))
      ]),
      SizedBox(height: 50),
      new Stack(children: [
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const VinylsList()));
            },
            child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 50,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage('images/Subscription_400x.jpg'),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: new Align(
                    alignment: Alignment.bottomLeft,
                    child: new Text('   Vinyls  \n',
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.black.withOpacity(.6))))))
      ]),
      SizedBox(height: 50),
      new Stack(children: [
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccessoriesList()));
            },
            child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 50,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage('images/VA-33-2_320x320.jpg'),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: Offset(0, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: new Align(
                    alignment: Alignment.bottomLeft,
                    child: new Text('   Accessories/Cleaning  \n',
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.black.withOpacity(.6))))))
      ]),
      SizedBox(height: 50),
    ]))));
  }
}
