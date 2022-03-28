import 'package:victrola_shop/models/product.dart';
import 'package:victrola_shop/models/user_profile.dart';

class Account {

  Account({
    required this.email,
    required this.password,
    this.profiles  = const [], // If I was more concerned with the database-stuff, I would fill that in, but as it is, this is a demo, and I want it to be functional first
  });

  final String email;
  final String password;
  final List<UserProfile> profiles;
  final Map<int, int> cart = <int, int>{}; // Cart represented by two ints - key: the array-index of the product in product_data; value: the quantity of said product 

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