import 'package:flutter/material.dart';
import 'package:walk_a_dog/screens/add_a_walk_modal_bottom.dart';
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
            'https://www.thesprucepets.com/thmb/8TWtyJq0RXAlWoJKu62mm4dlYdI=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/portrait-if-a-spitz-pomeranian_t20_v3o29E-5ae9bbdca18d9e0037d95983.jpg',
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
          addAWalkModalBottom(context);
        },
        label: Text('Add a Walk'),
        icon: Icon(Icons.add),
      ),
    );
  }
}
