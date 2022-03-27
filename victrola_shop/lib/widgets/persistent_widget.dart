import 'package:flutter/material.dart';

// Credit where credit is due: https://medium.com/geekculture/persistent-widget-across-all-screens-using-flutter-navigator-45e6b2e57cf7
// class PersistentWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40.0,
//       margin: EdgeInsets.all(10.0),
//       decoration: BoxDecoration(borderRadius: BorderRadius.all(new Radius.circular(10.0)),
//         gradient: LinearGradient(colors: [Colors.yellow[700], Colors.redAccent],
//           begin: Alignment.centerLeft, end: Alignment.centerRight, tileMode: TileMode.clamp)),
//       child: Center(child: Text('Tap to know about our exciting new offer!', style: TextStyle(fontSize: 16.0, color: Colors.white70, fontWeight: FontWeight.bold), ), ),
//     );
//   }
// }