import 'package:victrola_shop/models/user_profile.dart';

class Account {

  const Account({
    required this.email,
    required this.password,
    this.profiles  = const []
  });

  final String email;
  final String password;
  final List<UserProfile> profiles;
}