import 'package:flutter/material.dart';
import 'package:walk_a_dog/widgets/dogs_list.dart';

import '../models/dog.dart';

class DogsOverviewScreen extends StatelessWidget {
  final List<Dog> loadedDogs = [
    //placeholder list - it will be accessed from the backend
    Dog(
        id: 'd1',
        name: 'dog1',
        phoneNumber: '123 123 123',
        imageUrl:
            'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.uGoiZJ5X4im84ERYpFFKDQHaHa%26pid%3DApi&f=1',
        address: 'Kartezjusza 1C, Warszawa'),
    Dog(
        id: 'd2',
        name: 'dog2',
        phoneNumber: '123 123 123',
        imageUrl:
            'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.uGoiZJ5X4im84ERYpFFKDQHaHa%26pid%3DApi&f=1',
        address: 'Kartezjusza 1C, Warszawa'),
    Dog(
        id: 'd3',
        name: 'dog3',
        phoneNumber: '123 123 123',
        imageUrl:
            'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.uGoiZJ5X4im84ERYpFFKDQHaHa%26pid%3DApi&f=1',
        address: 'Kartezjusza 1C, Warszawa'),
    Dog(
        id: 'd4',
        name: 'dog4',
        phoneNumber: '123 123 123',
        imageUrl:
            'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.uGoiZJ5X4im84ERYpFFKDQHaHa%26pid%3DApi&f=1',
        address: 'Kartezjusza 1C, Warszawa'),
    Dog(
        id: 'd5',
        name: 'dog5',
        phoneNumber: '123 123 123',
        imageUrl: 'placeholder',
        address: 'Kartezjusza 1C, Warszawa'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DogsList(this.loadedDogs),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('Add a Walk'),
        icon: Icon(Icons.add),
      ),
    );
  }
}
