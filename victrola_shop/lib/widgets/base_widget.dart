import 'package:flutter/material.dart';
import 'package:victrola_shop/widgets/persistent_widget.dart';

// Credit where credit is due: https://medium.com/geekculture/persistent-widget-across-all-screens-using-flutter-navigator-45e6b2e57cf7
class BaseWidget extends StatelessWidget {
  final Widget child;
  const BaseWidget({required this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Victrola Shop')),
      body: Column(
        children: [
          Expanded(child: child),
          // PersistentWidget(), // For any other widgets we want to show in all the screens
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
      ),
    );
  }
}