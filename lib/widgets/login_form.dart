import 'package:flutter/material.dart';
import 'package:walk_a_dog/services/field_validators.dart';
import 'package:walk_a_dog/widgets/dog_logo.dart';

Form loginForm(BuildContext context, GlobalKey<FormState> formKey) {
  return new Form(
    key: formKey,
    child: new ListView(
      shrinkWrap: true,
      children: [
        dogLogo('lib/assets/jumping_dog_logo.gif'),
        _emailInput(),
        _passwordInput(),
        _loginProceedButton(context, formKey),
      ],
    ),
  );
}

Widget _emailInput() {
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
      validator: (value) => emailValidation(value),
      //onSave must be trim to avoid whitespaces
    ),
  );
}

Widget _passwordInput() {
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
      validator: (value) => passwordValidation(value, null),
      //onSave must be trim to avoid whitespaces
    ),
  );
}

Widget _loginProceedButton(BuildContext context, GlobalKey<FormState> formKey) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
    child: IconButton(
      icon: Icon(Icons.keyboard_arrow_right),
      color: Theme.of(context).accentColor,
      onPressed: () {
        if (formKey.currentState.validate()) {
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text('Processing Data')));
        }
      },
      iconSize: 80.0,
    ),
  );
}
