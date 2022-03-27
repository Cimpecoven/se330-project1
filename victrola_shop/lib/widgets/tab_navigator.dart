import 'package:flutter/material.dart';
import 'package:victrola_shop/screens/landing_screen.dart';
import 'package:victrola_shop/screens/shopping-cart_screen.dart';

import '../main.dart';

// Credit: https://medium.com/coding-with-flutter/flutter-case-study-multiple-navigators-with-bottomnavigationbar-90eb6caa6dbf
class ProfileNavigatorRoutes {
  static const String root = '/';
  static const String cart = '/cart';
}

class TabNavigatorRoutes {
  static const String root = '/';
  static const String cart = '/cart';
}

class CartNavigatorRoutes {
  static const String root = '/';
  static const String cart = '/cart';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context, {int materialIndex: 500}) {
    var routeBuilders = _routeBuilders(context, materialIndex: materialIndex);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                routeBuilders[TabNavigatorRoutes.cart]!(context)));
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.root: (context) => LandingScreen(),
      TabNavigatorRoutes.cart: (context) => ShoppingCartScreen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    var routeBuilders = _routeBuilders(context);

    return Navigator(
        key: navigatorKey,
        initialRoute: TabNavigatorRoutes.root,
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
              builder: (context) => routeBuilders[routeSettings.name]!(context));
        });
  }
}