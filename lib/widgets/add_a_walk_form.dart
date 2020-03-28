import 'package:flutter/material.dart';

Form addAWalkForm(BuildContext context, GlobalKey<FormState> formKey) {
  return new Form(
    key: formKey,
    child: new ListView(shrinkWrap: true, children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        child: _dogNameField('Dog\'s name'),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: ListTile(
          leading: Icon(Icons.camera_alt),
          title: Text('Add a photo'),
          onTap: () {
            //open photo options
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: ListTile(
          leading: Icon(Icons.location_on),
          title: Text('Add a location'),
          onTap: () {
            //open photo options
          },
        ),
      ),
      Row(
        children: [
          _discardButton(context),
          _acceptButton(context, formKey),
        ],
      ),
    ]),
  );
}

Widget _dogNameField(var hintText) {
  return TextFormField(
    maxLines: 1,
    decoration: new InputDecoration(
      hintText: hintText,
      icon: new Icon(Icons.edit),
    ),
    validator: (value) => value.isEmpty ? 'Name field can\'t be empty' : null,
  );
}

Widget _discardButton(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
    child: IconButton(
      icon: Icon(Icons.close),
      color: Colors.red,
      onPressed: () => {
        Navigator.of(context).pop(),
      },
      iconSize: 40.0,
    ),
  );
}

Widget _acceptButton(context, GlobalKey<FormState> formKey) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
    child: IconButton(
      icon: Icon(Icons.check),
      color: Colors.green,
      onPressed: () => {
        if (formKey.currentState.validate())
          {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('Processing Data'),
              ),
            )
          }
      },
      iconSize: 40.0,
    ),
  );
}
