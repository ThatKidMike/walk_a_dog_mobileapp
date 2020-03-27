import 'package:flutter/material.dart';
import 'package:walk_a_dog/widgets/dog_logo.dart';
import 'package:walk_a_dog/widgets/reg_log_fields.dart';

class RegisterOverviewScreen extends StatelessWidget {
  static const routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Create new account'),
      ),
      body: new Form(
        child: new ListView(shrinkWrap: true, children: [
          dogLogo('lib/assets/talking_dog_logo.gif'),
          emailInput(),
          nameInput(),
          passwordInput('Password'),
          passwordInput('Password confirmation'),
          proceedButton(context),
        ]),
      ),
    );
  }
}
