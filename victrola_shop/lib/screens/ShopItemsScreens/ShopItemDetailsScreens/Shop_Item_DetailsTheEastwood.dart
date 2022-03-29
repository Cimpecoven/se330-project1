import 'package:flutter/material.dart';
import 'package:overlay_container/overlay_container.dart';
import 'package:victrola_shop/main.dart';

class ShopItemDetailsTheEastwood extends StatelessWidget {
  const ShopItemDetailsTheEastwood({Key? key}) : super(key: key);

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
  static String mainImage = 'images/RecordPlayerImages/The Eastwood.jpg';

  void _toggleDropdownColor() {
    setState(() {
      _dropdownShown = !_dropdownShown;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Victrola Shop')),
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
                                      'images/RecordPlayerImages/The Eastwood.jpg';
                                },
                                child: Image(
                                  image: new AssetImage(
                                      'images/RecordPlayerImages/TheEastwoodTeak.jpg'),
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
                                        'images/RecordPlayerImages/The Eastwood Dark.jpg';
                                  },
                                  child: Image(
                                    image: new AssetImage(
                                        'images/RecordPlayerImages/TheEastwoodDark.jpg'),
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
                  'The Victrola Eastwood hybrid turntable features a sleek, classic design, molding upgraded features with classic Victrola sound. This 3-speed record player plays all your favorite 33 1/3, 45, and 78 RPM records, and Dual-Bluetooth connectivty allows you to stream music from your smart device, or play your records through any external Bluetooth speaker. Modern finish brightens up the room and makes the Eastwood the focal point of any listening space.\nThe Audio-Technica AT-3600LA cartridge combines with the custom tuned stereo speakers to provide crisp, clear sound for your perfect listening experience, making the Eastwood a must-have for any vinyl lover. The first Victrola was introduced in 1906, and we are carrying on that legacy of making lifelong music memories in every home. Over a century later, the Victrola name is still synonymous with precision, quality, and innovation. Our products are designed to transcend time, from the classic sound of vintage record players to sleek, modern audio systems. With Victrola, stylish design meets unparalleled quality, and we are proud to bring a truly unforgettable listening experience to music lovers of all ages.\n\nMeasures 13.16"x5.4"x13.11"\n\nModel # VTA-72-BAM',
                  style: new TextStyle(
                    fontSize: 16.0,
                    color: Colors.blueGrey,
                  )))
        ]))));
  }
}
