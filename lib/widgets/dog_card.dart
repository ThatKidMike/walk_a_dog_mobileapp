import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:walk_a_dog/icons/dogs_bar_icons.dart';

class DogCard extends StatelessWidget {
  final _index;
  final _walksItems;
  DogCard(this._index, this._walksItems);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CachedNetworkImage(
          imageUrl: _walksItems[_index].imageUrl,
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
        title: Text(_walksItems[_index].name),
        subtitle: Text(_walksItems[_index].howFar.toString() + ' km'),
        trailing: IconButton(
          icon: Icon(
            DogsBarIcons.takewalk,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {
            debugPrint(
              _walksItems[_index]
                  .name, //onPressed Debug Console shows name of a dog
            );
          },
        ),
        isThreeLine: true,
      ),
    );
  }
}
