// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:overlay_container/overlay_container.dart';

class VinylsDetailsBillie extends StatelessWidget {
  const VinylsDetailsBillie({Key? key}) : super(key: key);

  static String routeName = '/vinylDetailsBillie';

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
                            'images/Vinyls/Billie Eilish - Dont Smile At Me.jpg'),
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
                '\nBillie Eilish - Dont Smile At Me\n',
                style: new TextStyle(
                    fontSize: 24.0,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
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
                  'Red Vinyl LP pressing. 2017 debut EP from Billie Eilish the girl W Magazine calls Pops Terrifying 15-Year-Old Prodigy. At age eleven Billie began writing and singing her own songs taking after her brother Finneas who was already performing his own songs with his band. Ocean Eyes debut single under the name Billie Eilish was released on SoundCloud in 2016 and became a viral hit. Ocean Eyes was released worldwide through Darkroom and Interscope Records on November 18 2016 to positive critical reviews. Following the success of the Ocean Eyes remixes Eilish released the single Bellyache on February 24 2017. Bellyache was produced and co-written by Finneas OConnell.\n\n1.1 Copycat\n1.2 Idontwannabeyouanymore\n1.3 My Boy\n1.4 Watch\n2.1 Party Favor\n2.2 Bellyache\n2.3 Ocean Eyes\n2.4 Hostage\n\nH 0.16\nW 12.33\nL 12.37',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ))),
        ]))));
  }
}
