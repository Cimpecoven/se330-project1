// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:victrola_shop/main.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/AccessoriesDetailsScreens/AccessoriesDetailsTheKit.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/ShopItemDetailsScreens/Shop_Item_DetailsClassic.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/ShopItemDetailsScreens/Shop_Item_DetailsRevolutionGO.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/ShopItemDetailsScreens/Shop_Item_DetailsTheEastwood.dart';

class AccessoriesList extends StatelessWidget {
  const AccessoriesList({Key? key}) : super(key: key);

  static String routeName = '/accessoriesList';

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
                  '\nAccessories\n',
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
                                    const AccessoriesTheKit()));
                      },
                      child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: new Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width - 225,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    image: new AssetImage(
                                        'images/Accessories/TheKit.jpg'),
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
                                  child: new Text('   The Kit  \n',
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
                                        'images/Accessories/TurntableNeedles.jpg'),
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
                                      '   3 Pack  \n  Turntable Needles  \n',
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
                                        'images/Accessories/WoodenRecordCrate.jpg'),
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
                                  child: new Text('   Wooden Record Crate  \n',
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
