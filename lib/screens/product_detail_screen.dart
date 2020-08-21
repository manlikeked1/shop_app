import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // //Property
  // final String title;
  // //Constructor
  // ProductDetailScreen(this.title);

  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    // final productId = ModalRoute.of(context).settings.arguments as String; //This is the id
    // ...
    return Scaffold(
      appBar: AppBar(
          // title: Text(title),
          ),
    );
  }
}
