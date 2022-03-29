// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:overlay_container/overlay_container.dart';

class ShopItemDetailsClassic extends StatelessWidget {
  const ShopItemDetailsClassic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyOverlayStatePage(),
        title: 'Victrola Shop',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.blueGrey, accentColor: Colors.amber)));
  }
}

class MyOverlayStatePage extends StatefulWidget {
  _MyOverlayState createState() => _MyOverlayState();
}

class _MyOverlayState extends State<MyOverlayStatePage> {
  // Need to maintain a "show" state either locally or inside
  // a bloc.
  bool _dropdownShown = false;

  void _toggleDropdownColor() {
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
        body: new Scaffold(
            body: SingleChildScrollView(
                child: new Column(children: [
          SizedBox(height: 10),
          new Stack(children: [
            new Container(
                alignment: Alignment.center,
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage(
                            'images/RecordPlayerImages/Classic 7-in-1 BluetoothTurntable.jpg'),
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
                ))
          ]),
          SizedBox(height: 10),
          new Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blueGrey,
              child: Text(
                '\nThe Classic 7-in-1 Bluetooth Turntable\n',
                style: new TextStyle(
                    fontSize: 24.0,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
          new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: _toggleDropdownColor,
                    child: Column(
                      children: <Widget>[
                        Text("\nColors\n",
                            style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                  OverlayContainer(
                    show: _dropdownShown,
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 6,
                          )
                        ],
                      ),
                      child: Row(
                        children: [new Text('No Color Options')],
                      ),
                    ),
                  ),
                ],
              )),
          new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: Column(
                          children: <Widget>[
                            Text("\nAdd to Cart\n",
                                style: new TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ))),
          new Container(
              padding: EdgeInsets.all(14.0),
              child: Text(
                  'The Victrola Classic 7-in-1 turntable has many entertainment features. With 3-speeds, Bluetooth connectivity, and built in speakers, your guests will be in awe of this entertainment system. This turntable also features a CD/cassette player, FM radio, an aux-in, and a RCA output.  Measures 18.1" X 13.4" X 9.5".  \n\nModel # VTA-204B',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ))),
        ]))));
  }
}
