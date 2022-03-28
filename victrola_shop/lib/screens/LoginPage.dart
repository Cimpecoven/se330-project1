import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                style: TextStyle(fontSize: 20, height: 2.0),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 50.0),
              child: TextField(
                obscureText: true,
                style: TextStyle(fontSize: 20, height: 2.0),
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                  //hintText: 'Enter password associated with email',
                ),
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
                onPressed: () {},
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
              onPressed: () {},
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
