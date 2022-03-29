// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:victrola_shop/main.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/ShopItemDetailsScreens/Shop_Item_DetailsClassic.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/ShopItemDetailsScreens/Shop_Item_DetailsRevolutionGO.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/ShopItemDetailsScreens/Shop_Item_DetailsTheEastwood.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/VinylDetailsScreens/VinylDetailsBeatles.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/VinylDetailsScreens/VinylDetailsBillie.dart';

class VinylsList extends StatelessWidget {
  const VinylsList({Key? key}) : super(key: key);

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
                  '\nVinyls\n',
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
                                    const VinylsDetailsBeatles()));
                      },
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/Vinyls/The Beatles - Abbey Road.jpg'),
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
                                  child: new Text(
                                      '   The Beatles  \n   Abbey Road  \n',
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
                                    const VinylsDetailsBillie()));
                      },
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              alignment: Alignment.bottomRight,
                              height: 150,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/Vinyls/Billie Eilish - Dont Smile At Me.jpg'),
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
                                  child: new Text(
                                      '   Billie Eilish  \n   Dont Smile At Me  \n',
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
                              height: 150,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/Vinyls/Harry Styles - Fine Line.jpg'),
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
                                  child: new Text(
                                      '   Harry Styles  \n   Fine Line  \n',
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
                              height: 150,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/Vinyls/Boston.jpg'),
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
                                  child: new Text('   Boston  \n   Boston  \n',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor:
                                              Colors.black.withOpacity(.6)))))))
                ]),
              ],
            ),
          ],
        )));
  }
}
