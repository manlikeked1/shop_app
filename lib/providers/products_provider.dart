import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    //These are DUMMY PRODUCTS
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Product(
        id: 'p5',
        title: 'Wristwatch',
        description: 'Provides the time.',
        price: 49.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2014/07/31/23/00/wristwatch-407096_1280.jpg'),
    Product(
        id: 'p6',
        title: 'Shoe',
        description: 'Helps to aid easy movement.',
        price: 49.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/06/03/17/35/shoe-1433925_1280.jpg'),
    Product(
        id: 'p7',
        title: 'Cap',
        description: 'Provides warmth to the head.',
        price: 49.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/11/29/05/11/adult-1867471_1280.jpg'),
    Product(
        id: 'p8',
        title: 'Necklace',
        description: 'Gives beauty.',
        price: 49.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2015/05/26/09/48/chain-784422_1280.jpg'),
    Product(
        id: 'p9',
        title: 'Washing Machine',
        description: 'Aids in washing cloths.',
        price: 49.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/31/18/50/washing-machine-1786385_1280.png'),
    Product(
        id: 'p10',
        title: 'Pressing Iron',
        description: 'Ironing clothes ',
        price: 49.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2014/07/27/17/29/ironing-403074_1280.jpg'),
    Product(
        id: 'p11',
        title: 'Cup',
        description: 'Prepare any drink you want.',
        price: 49.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2017/10/13/15/29/black-coffee-2847957_1280.jpg'),
    Product(
        id: 'p12',
        title: 'T-shirt',
        description: 'Covers nakedness.',
        price: 49.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/06/20/04/30/character-1468032_1280.jpg'),
  ];

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
