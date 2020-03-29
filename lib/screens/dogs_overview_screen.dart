import 'package:flutter/material.dart';
import 'package:walk_a_dog/screens/add_a_walk_modal_bottom.dart';
import 'package:walk_a_dog/widgets/dogs_list.dart';

class DogsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DogsList(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          addAWalkModalBottom(context);
        },
        label: Text('Add a Walk'),
        icon: Icon(Icons.add),
      ),
    );
  }
}
