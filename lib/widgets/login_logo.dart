import 'package:flutter/material.dart';

Widget loginLogo() {
  return new Hero(
    tag: 'hero',
    child: Padding(
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 150.0,
        child: Image.asset('lib/assets/jumping_dog_logo.gif'),
      ),
    ),
  );
}
