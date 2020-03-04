import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../icons/dogs_bar_icons.dart';
import '../models/dog.dart';

class DogsList extends StatelessWidget {
  final List<Dog> _loadedDogs;

  DogsList(loadedDogs) : this._loadedDogs = loadedDogs;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _loadedDogs.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: CachedNetworkImage(
                  imageUrl: _loadedDogs[index].imageUrl,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Image(
                    image: AssetImage('lib/assets/no_image_dog.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              title: Text(_loadedDogs[index].name),
              subtitle: Text(_loadedDogs[index].phoneNumber),
              trailing: IconButton(
                icon: Icon(
                  DogsBarIcons.takewalk,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () => {
                  debugPrint(
                    _loadedDogs[index]
                        .name, //onPressed Debug Console shows name of a dog
                  )
                },
              ),
              isThreeLine: true,
            ),
          );
        });
  }
}
