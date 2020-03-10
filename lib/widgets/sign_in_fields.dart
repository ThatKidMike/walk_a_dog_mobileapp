import 'package:flutter/material.dart';

Widget emailInput() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
    child: new TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: new InputDecoration(
          hintText: 'Email',
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          )),
      validator: (value) =>
          value.isEmpty ? 'Email field can\'t be empty' : null,
      //onSave must be trim to avoid whitespaces
    ),
  );
}

Widget passwordInput() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
    child: new TextFormField(
      maxLines: 1,
      obscureText: true,
      autofocus: false,
      decoration: new InputDecoration(
          hintText: 'Password',
          icon: new Icon(
            Icons.lock,
            color: Colors.grey,
          )),
      validator: (value) =>
          value.isEmpty ? 'Password field can\'t be empty' : null,
      //onSave must be trim to avoid whitespaces
    ),
  );
}

Widget proceedButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
    child: IconButton(
      icon: Icon(Icons.keyboard_arrow_right),
      color: Theme.of(context).accentColor,
      onPressed: () => {},
      iconSize: 80.0,
    ),
  );
}

Widget registerButton() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
    child: FlatButton(
      child: Text(
        'Register',
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey,
        ),
      ),
      onPressed: () => {},
    ),
  );
}
