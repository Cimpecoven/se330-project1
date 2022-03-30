// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:overlay_container/overlay_container.dart';

class ShopItemDetailsRevolutionGO extends StatelessWidget {
  const ShopItemDetailsRevolutionGO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyOverlayStatePage(),
    );
  }
}

class MyOverlayStatePage extends StatefulWidget {
  _MyOverlayState createState() => _MyOverlayState();
}

class _MyOverlayState extends State<MyOverlayStatePage> {
  // Need to maintain a "show" state either locally or inside
  // a bloc.
  bool _dropdownShown = false;
  static String mainImage =
      'images/RecordPlayerImages/RevolutionGoPortableRechargeable.jpg';

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
                        image: new AssetImage(mainImage), fit: BoxFit.cover),
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
                '\nRevolution GO Portable Rechargeable Record Player\n',
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
                      height: 100,
                      padding: const EdgeInsets.all(8),
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
                      child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Row(
                            children: <Widget>[
                              ElevatedButton(
                                style: new ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white)),
                                onPressed: () {
                                  _toggleDropdownColor();
                                  mainImage =
                                      'images/RecordPlayerImages/RevolutionGoPortableRechargeable.jpg';
                                },
                                child: Image(
                                  image: new AssetImage(
                                      'images/RecordPlayerImages/RevolutionGOBlack.jpg'),
                                ),
                              ),
                              ElevatedButton(
                                  style: new ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white)),
                                  onPressed: () {
                                    _toggleDropdownColor();
                                    mainImage =
                                        'images/RecordPlayerImages/RevolutionGoBlueMain.jpg';
                                  },
                                  child: Image(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/RevolutionGOBlue.jpg'),
                                  ))
                            ],
                          )),
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
                  'The Revolution GO includes a 3-speed belt driven turntable with an Audio Technica moving magnetic cartridge. The integrated Bluetooth stereo speaker lets you easily stream your favorite tunes, and our patent-pending Vinyl Stream™ technology allows you to stream your records to any external Bluetooth speaker. The rechargeable lithium battery lasts up to 12 hours of continuous playback.',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ))),
        ]))));
  }
}
