import 'package:flutter/material.dart';
import 'package:walk_a_dog/screens/register_overview_screen.dart';
import 'package:walk_a_dog/widgets/dog_logo.dart';
import 'package:walk_a_dog/widgets/reg_log_fields.dart';

class LoginOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sign in'),
      ),
      body: new Form(
        child: new ListView(shrinkWrap: true, children: [
          dogLogo('lib/assets/jumping_dog_logo.gif'),
          emailInput(),
          passwordInput('Password'),
          proceedButton(context),
          registerButton(context),
        ]),
      ),
    );
  }
}
