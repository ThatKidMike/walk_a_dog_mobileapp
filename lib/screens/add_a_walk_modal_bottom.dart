import 'package:flutter/material.dart';
import 'package:walk_a_dog/widgets/add_a_walk_form.dart';

Future addAWalkModalBottom(context) {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          AddAWalkForm(_formKey),
        ],
      );
    },
  );
}
