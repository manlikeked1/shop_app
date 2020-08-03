//This product.dart file is used to define how a product should look like in
//this application in order to build products based on this definition
//ehich simply helps us use the product in a uniform way.

import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  //Constructors
  Product(
      //There two types of way to write constructors. It's either you use named
      //arguments or positional arguments.
      //These are NAMED ARGUMENTS
      {
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
    @required this.price,
    this.isFavorite = false,
  });
}
