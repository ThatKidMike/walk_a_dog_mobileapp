import 'package:flutter/material.dart';
import 'package:walk_a_dog/widgets/register_form.dart';

class RegisterOverviewScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static const routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Create new account'),
      ),
      body: registerForm(context, _formKey),
    );
  }
}
