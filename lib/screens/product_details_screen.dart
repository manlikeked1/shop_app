import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  //Property
  final String title;
  //Constructor
  ProductDetailScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
