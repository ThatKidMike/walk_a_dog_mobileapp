import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walk_a_dog/providers/walks.dart';
import 'package:walk_a_dog/screens/add_a_walk_modal_bottom.dart';
import 'package:walk_a_dog/widgets/dogs_list.dart';

class DogsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Walks(),
      child: Scaffold(
        body: DogsList(),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            addAWalkModalBottom(context);
          },
          label: Text('Add a Walk'),
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}
