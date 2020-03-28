import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walk_a_dog/providers/walks.dart';

import '../icons/dogs_bar_icons.dart';

class DogsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final walksProvider = Provider.of<Walks>(context);
    final walksItems = walksProvider.items;
    return ListView.builder(
        itemCount: walksItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CachedNetworkImage(
                imageUrl: walksItems[index].imageUrl,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/no_image_dog.gif'),
                  radius: 25,
                ),
                imageBuilder: (context, imageProvider) => CircleAvatar(
                  backgroundImage: imageProvider,
                  radius: 25,
                ),
              ),
              title: Text(walksItems[index].name),
              subtitle: Text(walksItems[index].phoneNumber),
              trailing: IconButton(
                icon: Icon(
                  DogsBarIcons.takewalk,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {
                  //IN THIS WIDGET ADDING DOGS WORK... THINK 'BOUT IT.
                  debugPrint(
                    walksItems[index]
                        .name, //onPressed Debug Console shows name of a dog
                  );
                },
              ),
              isThreeLine: true,
            ),
          );
        });
  }
}
