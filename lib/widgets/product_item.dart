import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  //Property
  final String id;
  final String title;
  final String imageUrl;

  //Constructor(Positional Arguments)
  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading:
            IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
      ),
    );
  }
}
