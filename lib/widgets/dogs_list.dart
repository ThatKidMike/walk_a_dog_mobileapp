import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walk_a_dog/providers/walks.dart';
import 'package:walk_a_dog/widgets/dog_card.dart';

class DogsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final walksProvider = Provider.of<Walks>(context);
    final walksItems = walksProvider.items;
    return RefreshIndicator(
      child: ListView.builder(
          itemCount: walksItems.length,
          itemBuilder: (context, index) {
            return DogCard(index, walksItems);
          }),
      onRefresh: () {
        return refreshList(walksProvider);
      },
    );
  }

  Future<Null> refreshList(var walksProvider) async {
    await Future.delayed(Duration(seconds: 1));
    walksProvider.refresh();
  }
}
