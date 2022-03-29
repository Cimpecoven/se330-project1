// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:victrola_shop/main.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/ShopItemDetailsScreens/Shop_Item_DetailsClassic.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/ShopItemDetailsScreens/Shop_Item_DetailsRevolutionGO.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/ShopItemDetailsScreens/Shop_Item_DetailsTheEastwood.dart';

class RecordPlayersList extends StatelessWidget {
  const RecordPlayersList({Key? key}) : super(key: key);

  static String routeName = '/recordPlayersList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Victrola Shop')),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 25),
            new Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.blueGrey,
                child: new Text(
                  '\nRecord Players\n',
                  style: new TextStyle(
                    fontSize: 24.0,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            SizedBox(height: 25),
            Row(
              children: [
                SizedBox(height: 50),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ShopItemDetailsRevolutionGO()));
                      },
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/RevolutionGoPortableRechargeable.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   Revolution GO  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ShopItemDetailsClassic()));
                      },
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              alignment: Alignment.bottomRight,
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/Classic 7-in-1 BluetoothTurntable.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   Classic 7-in-1  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 50),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ShopItemDetailsTheEastwood()));
                      },
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/The Eastwood.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   The Eastwood  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              alignment: Alignment.bottomRight,
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/The Journey.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   The Journey  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 50),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/RetroBluetooth.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   Retro Bluetooth  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              alignment: Alignment.bottomRight,
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/The Avery.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   The Avery  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 50),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/The Ellington.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   The Ellington  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              alignment: Alignment.bottomRight,
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/Professional Series.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   Professional Series  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 50),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/The Liberty.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   The Liberty w/Stand  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
                new Stack(children: [
                  GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              alignment: Alignment.bottomRight,
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/Premiere T1.jpg'),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 10,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: new Align(
                                  alignment: Alignment.bottomLeft,
                                  child: new Text('   Premiere T1  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
              ],
            )
          ],
        )));
  }
}
