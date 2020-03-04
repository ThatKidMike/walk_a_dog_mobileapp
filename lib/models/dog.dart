import 'package:flutter/foundation.dart';

class Dog {
  final String id;
  final String name;
  final String phoneNumber;
  final String imageUrl;
  final String address;

  Dog({
    @required this.id,
    @required this.name,
    @required this.phoneNumber,
    this.imageUrl,
    @required this.address,
  });
}
