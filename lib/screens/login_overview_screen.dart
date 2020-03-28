import 'package:flutter/material.dart';
import 'package:walk_a_dog/widgets/login_form.dart';
import 'package:walk_a_dog/widgets/register_button_navigate.dart';

class LoginOverviewScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sign in'),
      ),
      body: new ListView(children: [
        loginForm(context, _formKey),
        registerButtonNavigate(context),
      ]),
    );
  }
}
