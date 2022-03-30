// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:overlay_container/overlay_container.dart';

class VinylsDetailsBeatles extends StatelessWidget {
  const VinylsDetailsBeatles({Key? key}) : super(key: key);

  static String routeName = '/vinylsDetailsBeatles';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyOverlayStatePage());
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
                            'images/Vinyls/The Beatles - Abbey Road.jpg'),
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
                '\nThe Beatles - Abbey Road\n',
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
                  'Standard vinyl LP pressing. Digitally remixed 50th Anniversary edition of The Beatles musical masterpiece. This Abbey Road release features the new stereo album mix sourced directly from the original eight-track session tapes. To produce the mix Giles Martin working with Sam Okell was guided by the albums original stereo mix supervised by his father George Martin. It is time to experience Abbey Road again.\n\n1.1 Come Together\n1.2 Something\n1.3 Maxwells Silver Hammer\n1.4 Oh Darling\n1.5 Octopuss Garden\n1.6 I Want You Shes So Heavy\n2.1 Here Comes the Sun\n2.2 Because\n2.3 You Never Give Me Your Money\n2.4 Sun King\n2.5 Mean Mr Mustard\n2.6 Polythene Pam\n2.7 She Came in Through the Bathroom Window\n2.8 Golden Slumbers\n2.9 Carry That Weight\n2.10 The End\n2.11 Her Majesty\n\nH 0.19\nW 11.89\nL 12.30',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ))),
        ]))));
  }
}
