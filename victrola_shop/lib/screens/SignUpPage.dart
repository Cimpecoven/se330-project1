import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/models/account.dart';
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
                //validator:
                onSaved: (value) => firstName = value!,
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
                //validator:
                onSaved: (value) => lastName = value!,
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
                //validator; (maybe check for @?)
                onSaved: (value) => email = value!,
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
                //validator:
                onSaved: (value) => passCheck = value!,
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
                validator: (value) {
                  if (value != null && value.compareTo(passCheck) == 0) {
                    match = true;
                    return null;
                  } else {
                    return 'Passwords do not match!';
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
                  if (test == null) {
                    Navigator.popUntil(context, (route) => false);
                    Navigator.of(context).pushNamed('/');
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('The user already existed. Please Try again.')),
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
