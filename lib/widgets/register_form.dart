import 'package:flutter/material.dart';
import 'package:walk_a_dog/helpers/fields_validators.dart';
import 'package:walk_a_dog/widgets/dog_logo.dart';

final TextEditingController _passwordController = TextEditingController();
final TextEditingController _passwordConfirmationController =
    TextEditingController();

Form registerForm(BuildContext context, GlobalKey<FormState> formKey) {
  return new Form(
    key: formKey,
    child: new ListView(shrinkWrap: true, children: [
      dogLogo('lib/assets/talking_dog_logo.gif'),
      _emailInput(),
      _nameInput(),
      _passwordInput('Password', _passwordController),
      _passwordInput('Password confirmation', _passwordConfirmationController),
      _proceedButton(context, formKey),
    ]),
  );
}

Widget _emailInput() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
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

Widget _nameInput() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
    child: new TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: new InputDecoration(
          hintText: 'Name',
          icon: new Icon(
            Icons.contacts,
            color: Colors.grey,
          )),
      validator: (value) => nameValidation(value),
      //onSave must be trim to avoid whitespaces
    ),
  );
}

Widget _passwordInput(var hintText, var controller) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
    child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        controller: controller,
        decoration: new InputDecoration(
            hintText: hintText,
            icon: new Icon(
              Icons.lock,
              color: Colors.grey,
            )),
        validator: (value) {
          if (controller == _passwordController)
            return passwordValidation(value, _passwordConfirmationController);
          else
            return passwordConfirmationValidation(value, _passwordController);
        }
        //onSave must be trim to avoid whitespaces
        ),
  );
}

Widget _proceedButton(BuildContext context, GlobalKey<FormState> formKey) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
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
