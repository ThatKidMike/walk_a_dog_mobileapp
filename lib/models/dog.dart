import 'package:flutter/foundation.dart';

class Dog {
  final String id;
  final String name;
  final int howFar;
  final String imageUrl;
  final String address;

  Dog({
    @required this.id,
    @required this.name,
    this.howFar,
    this.imageUrl,
    @required this.address,
  });
}
