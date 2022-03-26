import 'package:victrola_shop/models/product.dart';
import 'package:victrola_shop/models/user_profile.dart';

class Account {

  Account({
    required this.email,
    required this.password,
    // this.profiles  = const [],
  });

  final String email;
  final String password;
  // final List<UserProfile> profiles;
  // Represented in the database by a table of two integers:
  // one for the quantity of products, and the other for the position in the products-list 
  final Map<int, int> cart = <int, int>{}; 

  factory Account.accountFromMap(Map<String, dynamic> map) {
    return Account(
      email: map['email'],
      password: map['password'],
    );
  }

  // The assumption here is that there will be only one of each product-type
  cartFromMapList(List<Map<String, dynamic>> mapList) {
    // Map<int, int> newCart = <int, int>{};
    for (var item in mapList) {
      cart.putIfAbsent(item['productId'], () => item['quantity']);
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
    };
  }
}