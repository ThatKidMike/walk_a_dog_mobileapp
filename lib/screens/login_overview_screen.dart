import 'package:flutter/material.dart';
import 'package:walk_a_dog/widgets/login_logo.dart';
import 'package:walk_a_dog/widgets/sign_in_fields.dart';

class LoginOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login screen overview'),
      ),
      body: new Form(
        child: new ListView(shrinkWrap: true, children: [
          loginLogo(),
          emailInput(),
          passwordInput(),
          proceedButton(context),
          registerButton(),
        ]),
      ),
    );
  }
}
