import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';
import 'package:victrola_shop/models/account.dart';
import 'package:victrola_shop/screens/SignUpPage.dart';
import 'package:victrola_shop/static-data/test_account_data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = '';
  String password = '';

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
              padding: EdgeInsets.only(top: 150.0),
              child: Center(
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                style: TextStyle(fontSize: 20, height: 2.0),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com',
                ),
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'Email is a required field.';
                  }
                }, 
                onChanged: (String value) => setState(() {
                  email = value;
                }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 50.0),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(fontSize: 20, height: 2.0),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                  //hintText: 'Enter password associated with email',
                ),
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    return null;
                  } else {
                    return 'Password is a required field.';
                  }
                }, 
                onChanged: (String value) => setState(() {
                  password = value;
                }),
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
                  if (test != null) {
                    DatabaseHelper.userInstance = test;
                    Navigator.of(context).pushNamed('/');
                  }
                  else if (email.isEmpty || password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('A required field was empty, try again.')));
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('The user entered does not currently exist. Please Try again.')),
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
              'Don\'t have an account?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SignUpPage())
              ),
              child: const Text('Register',
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
