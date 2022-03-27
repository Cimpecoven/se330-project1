import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';

import 'package:victrola_shop/models/account.dart';
import 'package:victrola_shop/screens/shopping-cart_screen.dart';
import 'package:victrola_shop/widgets/base_widget.dart';

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
      builder: (context, child) => BaseWidget(child: child!),
      initialRoute: (DatabaseHelper.userInstance == null) ? '/login' : '/landing',
      routes: {
      //   // manages routes in a different way:
      //   CategoriesScreen.routeName: // Gives our route a name 
      //     (context) => const CategoriesScreen(),
        
      //   CategoryMealsScreen.routeName:
      //     (context) => const CategoryMealsScreen(),

        ShoppingCartScreen.routeName:
          (context) => const ShoppingCartScreen(),
      },
      // onGenerateRoute: (settings) { 
      //   return MaterialPageRoute(builder: (context) => const CategoriesScreen()); 
      // },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (context) => const CategoriesScreen());
      // },
    );
  }
}
