import 'package:flutter/material.dart';
import 'package:walk_a_dog/screens/register_overview_screen.dart';

Widget registerButtonNavigate(BuildContext context) {
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
      onPressed: () => {_navigateToRegister(context)},
    ),
  );
}

void _navigateToRegister(BuildContext context) {
  Navigator.of(context).pushNamed(RegisterOverviewScreen.routeName);
  //pushNamed has 'arguments' parameter to pass data
}