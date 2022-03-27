import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';

import 'package:victrola_shop/models/account.dart';
import 'package:victrola_shop/screens/landing_screen.dart';
import 'package:victrola_shop/screens/shopping-cart_screen.dart';

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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey, accentColor: Colors.amber),
      ),
      home: AppView()
      // builder: (context, child) => BaseWidget(child: child!),
      // initialRoute: (DatabaseHelper.userInstance == null) ? '/login' : '/landing',
      // initialRoute: LandingScreen.routeName,
      // routes: {
      // //   // manages routes in a different way:
      //   LandingScreen.routeName: // Gives our route a name 
      //     (context) => const LandingScreen(),
        
      // //   CategoryMealsScreen.routeName:
      // //     (context) => const CategoryMealsScreen(),

      //   ShoppingCartScreen.routeName:
      //     (context) => ShoppingCartScreen(),
      // },
      // onGenerateRoute: (settings) { 
      //   return MaterialPageRoute(builder: (context) => const CategoriesScreen()); 
      // },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (context) => const CategoriesScreen());
      // },
    );
  }
}

enum TabItem { home, profile, cart, other }

class AppView extends StatefulWidget {
  const AppView({ Key? key }) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  
  // TabItem _currentTab = TabItem.home;
  // final navigatorKey = GlobalKey<NavigatorState>();
  final PageController _myPage = PageController(initialPage: 1);
  var selectedPage = 1;

  // @override
  // void initState() {
  //   super.initState();
  //   _myPage = 
  //   selectedPage = 1;
  // }

  // void _selectTab(TabItem tab) {
  //   setState(() {
  //     _currentTab = tab;
  //   });
  // }
  
  // void _selectTab(TabItem tab) {
  //   setState(() {
  //     _currentTab = tab;
  //   });
  // }

  void _selectTab(int index) {
    _myPage.jumpToPage(index);  
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Victrola Shop')),
      body: PageView(
        controller: _myPage,
        children: [
          // LandingScreen(),
          // ShoppingCartScreen()
            Center(child: Text("PROFILE PAGE")), // Will have our three pages here
            Center(child: Text("HOME PAGE")),
            Center(child: Text("SHOP PAGE")),
        ],
      ), //TabNavigator(navigatorKey: navigatorKey, tabItem: _currentTab)
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) => _selectTab(index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
        currentIndex: selectedPage,
        selectedItemColor: Colors.amber,
      ),
    );
  }
}
