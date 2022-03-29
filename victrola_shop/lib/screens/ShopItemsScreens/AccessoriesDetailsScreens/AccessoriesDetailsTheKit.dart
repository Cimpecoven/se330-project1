// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:overlay_container/overlay_container.dart';

class AccessoriesTheKit extends StatelessWidget {
  const AccessoriesTheKit({Key? key}) : super(key: key);

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
                        image: new AssetImage('images/Accessories/TheKit.jpg'),
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
                '\nThe Kit\n',
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
                  'There’s nothing worse than the scratchy sound of a dirty vinyl record. Fortunately, you can keep your favorite albums grime and dirt free with Victrola’s Kit. The Kit comes equipped with an anti-static brush to remove dust, as well as cleaning solution and cloth for deep cleaning. The Kit also doubles as a stand to display your current favorite record, complete with espresso finish and striking black metal accents.\n\nThe first Victrola was introduced in 1906, and we are carrying on that legacy of making lifelong music memories in every home. Over a century later, the Victrola name is still synonymous with precision, quality, and innovation. Our products are designed to transcend time, from the classic sound of vintage record players to sleek, modern audio systems.\n\nWith Victrola, stylish design meets unparalleled quality, and we are proud to bring a truly unforgettable listening experience to music lovers of all ages. \n\nModel # VA-55-ESP-SDF',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  ))),
        ]))));
  }
}
