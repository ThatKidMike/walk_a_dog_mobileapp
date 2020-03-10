import 'package:flutter/material.dart';

class LoginOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login screen overview'),
      ),
      body: new Hero(
        tag: 'hero',
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 150.0,
            child: Image.asset('lib/assets/jumping_dog_logo.gif'),
          ),
        ),
      ),
    );
  }
}
