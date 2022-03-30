import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/models/account.dart';
import 'package:victrola_shop/models/user_profile.dart';
import 'package:victrola_shop/static-data/test_account_data.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  String passCheck = '';
  bool match = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Victrola Shop",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              //first
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                style: const TextStyle(fontSize: 20, height: 2.0),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'First Name',
                ),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'First Name is a required field.';
                  }
                }, // onSaved: (value) => firstName = value!,
                onChanged: (value) => setState(() {
                  firstName = value;
                }),
              ),
            ),
            Padding(
              //last name
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                style: const TextStyle(fontSize: 20, height: 2.0),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Last Name',
                ),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'Last Name is a required field.';
                  }
                }, // onSaved: (value) => lastName = value!,
                onChanged: (value) => setState(() {
                  lastName = value;
                }),
              ),
            ),
            Padding(
              //email
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                style: const TextStyle(fontSize: 20, height: 2.0),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email Address',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'Email is a required field.';
                  }
                }, // onSaved: (value) => email = value!,
                onChanged: (value) => setState(() {
                  email = value;
                }),
              ),
            ),
            Padding(
              //password
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: TextFormField(
                obscureText: true,
                style: const TextStyle(fontSize: 20, height: 2.0),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'Password is a required field.';
                  }
                },
                // onSaved: (value) => passCheck = value!,
                onChanged: (value) => setState(() {
                  password = value;
                }),
              ),
            ),
            Padding(
              //confirm
              padding:
                  const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 50.0),
              child: TextFormField(
                obscureText: true,
                style: const TextStyle(fontSize: 20, height: 2.0),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
                keyboardType: TextInputType.text,
                onChanged: (value) => setState(() {
                  passCheck = value;
                }),
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'Confirm Password is a required field.';
                  }
                },
                /*onSaved: (value) {
                  if (match) {
                    password = value!;
                  } else {
                    //some kind of message that the pass words dont match
                  }
                },*/
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {
                  Account? test = FindTestAccount(email, password);
                  if (test == null &&
                      (email.isNotEmpty && password.isNotEmpty) &&
                      passCheck == password) {
                    test = Account(email: email, password: password, profiles: [
                      UserProfile(firstName: firstName, lastName: lastName)
                    ]);
                    TEST_ACCOUNT_DATA.add(test);
                    DatabaseHelper.userInstance = test;
                    Navigator.popUntil(context, (route) => false);
                    Navigator.of(context).pushNamed('/');
                  } else if (email.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content:
                            Text('A required field was empty, try again.')));
                  } else if (passCheck != password) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text(
                              'Passwords must match for account to be created.')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text(
                              'The user already existed. Please Try again.')),
                    );
                  }
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Already have an account?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Log In',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
