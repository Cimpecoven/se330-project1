// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:overlay_container/overlay_container.dart';
import 'package:flutter/gestures.dart';
import 'dart:collection';

class FeaturedBundle extends StatelessWidget {
  const FeaturedBundle({Key? key}) : super(key: key);

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
  static String mainImage = 'images/RecordPlayerImages/The Journey.jpg';

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
          new Row(children: [
            new Padding(
                padding: EdgeInsets.all(8.0),
                child: new Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width - 225,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new AssetImage(mainImage), fit: BoxFit.cover),
                    ))),
            new Padding(
                padding: EdgeInsets.all(8.0),
                child: new Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width - 225,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image:
                              new AssetImage('images/Accessories/TheKit.jpg'),
                          fit: BoxFit.cover),
                    )))
          ]),
          SizedBox(height: 10),
          new Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blueGrey,
              child: Text(
                '\nFREE record cleaning kit\nwith The Journey Turntable\n',
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
                          padding: const EdgeInsets.all(5),
                          child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(
                                    parent: AlwaysScrollableScrollPhysics()),
                                shrinkWrap: true,
                                children: <Widget>[
                                  ElevatedButton(
                                    style: new ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white)),
                                    onPressed: () {
                                      _toggleDropdownColor();
                                      mainImage =
                                          'images/RecordPlayerImages/The Journey.jpg';
                                    },
                                    child: Image(
                                      image: new AssetImage(
                                          'images/FeaturedBundlesImages/TheJourneyBlack.jpg'),
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
                                            'images/FeaturedBundlesImages/TheJourney-Brown.jpg';
                                      },
                                      child: Image(
                                        image: new AssetImage(
                                            'images/FeaturedBundlesImages/TheJourneyBrown.jpg'),
                                      )),
                                  ElevatedButton(
                                      style: new ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white)),
                                      onPressed: () {
                                        _toggleDropdownColor();
                                        mainImage =
                                            'images/FeaturedBundlesImages/TheJourney-Blue.jpg';
                                      },
                                      child: Image(
                                        image: new AssetImage(
                                            'images/FeaturedBundlesImages/TheJourneyBlue.jpg'),
                                      )),
                                  ElevatedButton(
                                      style: new ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white)),
                                      onPressed: () {
                                        _toggleDropdownColor();
                                        mainImage =
                                            'images/FeaturedBundlesImages/TheJourney-Rainbow.jpg';
                                      },
                                      child: Image(
                                        image: new AssetImage(
                                            'images/FeaturedBundlesImages/TheJourneyRainbow.jpg'),
                                      )),
                                  ElevatedButton(
                                      style: new ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white)),
                                      onPressed: () {
                                        _toggleDropdownColor();
                                        mainImage =
                                            'images/FeaturedBundlesImages/TheJourney-UK.jpg';
                                      },
                                      child: Image(
                                        image: new AssetImage(
                                            'images/FeaturedBundlesImages/TheJourneyUK.jpg'),
                                      ))
                                ],
                              ))),
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
                  'The Victrola Journey portable suitcase turntable is an absolute classic and loaded with features. Includes built-in Bluetooth technology to wirelessly stream music from any Bluetooth enabled device, 3-speed (33 1/3, 45, 78 RPM) belt driven turntable and 3.5mm aux-in jack for playing music from any non-Bluetooth device. Portable design and carry handle with Built-in Stereo speakers allow for tunes wherever you may go. RCA Aux-in for adding your own external speakers and headphone jack included.\n\nMeasures 13.9" x 10.1" x 5".\n\nVictrola Journey Bluetooth Portable Suitcase Record Player with 3-speed Turntable.\n\n\n\nModel VSC-550BT',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ))),
        ]))));
  }
}
