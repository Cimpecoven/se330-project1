import 'package:flutter/material.dart';
import 'package:victrola_shop/database/user_dbhelper.dart';

final _formKey = GlobalKey<FormState>();
String firstName = '';
String lastName = '';

Widget buildPopupDialog(BuildContext context, int i) {
  return AlertDialog(
    title: const Text('Change Name'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
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
              },
              onSaved: (value) => firstName = value!,
            ),
            TextFormField(
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
              },
              onSaved: (value) => lastName = value!,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  } else {
                    return;
                  }
                  DatabaseHelper.userInstance!.profiles[i].firstName =
                      firstName;
                  DatabaseHelper.userInstance!.profiles[i].lastName = lastName;
                  Navigator.of(context).pop();
                },
              ),
            )
          ]),
        )
      ],
    ),
    actions: <Widget>[
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}

void _submit() {
  if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save();
  } else {
    return;
  }
}
