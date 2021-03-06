import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';

import 'package:victrola_shop/models/account.dart';
import 'package:victrola_shop/screens/ShopItemsScreens/Record_Players_List.dart';
import 'package:victrola_shop/screens/LoginPage.dart';
import 'package:victrola_shop/screens/ProfileScreens/profile_list_screen.dart';
import 'package:victrola_shop/screens/landing_screen.dart';
import 'package:victrola_shop/screens/Cart-CheckoutScreens/shopping-cart_screen.dart';
import 'package:victrola_shop/static-data/test_account_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Victrola Shop',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blueGrey, accentColor: Colors.amber),
        ),
        home: AppView()
        );
  }
}

enum TabItem { home, profile, cart, other }

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final PageController _myPage = PageController(initialPage: 1);
  var selectedPage = 1;

  // DEMO CODE
  @override
  void initState() {
    // DatabaseHelper.userInstance = TEST_ACCOUNT_DATA.first;
    // DatabaseHelper.userInstance!.cart.addAll(<int, int>{ 3: 1, 2: 2, 1: 3 });
  }

  void _selectTab(int index) {
    _myPage.jumpToPage(index);
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (DatabaseHelper.userInstance == null){
      return LoginPage();
    }
    else {
      return Scaffold(
        appBar: AppBar(title: const Text('Victrola Shop')),
        body: PageView(
          controller: _myPage,
          children: [
            // Will have our three pages here
            // Center(child: Text("PROFILE PAGE")),
            ProfileListScreen(),
            LandingScreen(), //Center(child: Text("HOME PAGE")),
            ShoppingCartScreen()
          ],
        ), //TabNavigator(navigatorKey: navigatorKey, tabItem: _currentTab)
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) => _selectTab(index),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
          ],
          currentIndex: selectedPage,
          selectedItemColor: Colors.amber,
        ),
      );
    }
  }
}
