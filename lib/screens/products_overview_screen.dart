import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
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
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3ACertinaBasic.JPG&psig=AOvVaw15wrnHlU9pmedDHJw5FqaW&ust=1596662925690000&source=images&cd=vfe&ved=2ahUKEwj01a6Fv4LrAhUR8BoKHfpFAOAQr4kDegQIARB8'),

    Product(
        id: 'p6',
        title: 'Shoe',
        description: 'Helps to aid easy movement.',
        price: 49.99,
        imageUrl:
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AShoes%2C_leather_tennis_(pair)_(AM_2017.30.1-14).jpg&psig=AOvVaw21EpkLREd_NNkU18fGMSuI&ust=1596663021621000&source=images&cd=vfe&ved=2ahUKEwjO6Y2zv4LrAhUUw4UKHe-sCzUQr4kDegQIARB7'),
    Product(
        id: 'p7',
        title: 'Cap',
        description: 'Provides warmth to the head.',
        price: 49.99,
        imageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-na.ssl-images-amazon.com%2Fimages%2FI%2F61chFvCpNYL._UL1104_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.in%2FSnapback-Baseball-Hunting-Activities-Freesize%2Fdp%2FB07PPSLBCV&tbnid=3lidwx-fC8RWwM&vet=12ahUKEwiGmp_dv4LrAhVZ_4UKHU6cADYQMygAegUIARD_AQ..i&docid=mZrbshmJF8BNYM&w=1104&h=1100&q=caps&ved=2ahUKEwiGmp_dv4LrAhVZ_4UKHU6cADYQMygAegUIARD_AQ'),
    Product(
        id: 'p8',
        title: 'Necklace',
        description: 'Gives beauty.',
        price: 49.99,
        imageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-na.ssl-images-amazon.com%2Fimages%2FI%2F81OlX1k%252BXNL._AC_UY395_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.com%2FSilvadore-4mm-Curb-Mens-Necklace%2Fdp%2FB076CM3FPQ&tbnid=IvIATRgKMTYKgM&vet=12ahUKEwix_Pj2v4LrAhVJKxoKHb_rD_YQMygEegUIARD0AQ..i&docid=0foI7kM4-SViCM&w=403&h=395&q=necklace%20for%20man&ved=2ahUKEwix_Pj2v4LrAhVJKxoKHb_rD_YQMygEegUIARD0AQ'),
    Product(
        id: 'p9',
        title: 'Washing Machine',
        description: 'Aids in washing cloths.',
        price: 49.99,
        imageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-na.ssl-images-amazon.com%2Fimages%2FI%2F71T%252B-iy7TvL._SL1500_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.in%2FAmazonBasics-Fully-Automatic-Washing-cleaning-technology%2Fdp%2FB07V5W38WY&tbnid=3CJG_bY2lde4PM&vet=12ahUKEwiW0veSwILrAhUR_4UKHZ3UCxwQMygBegUIARD4AQ..i&docid=7vc7hZFmL9NqxM&w=1104&h=1500&q=washing%20machine&ved=2ahUKEwiW0veSwILrAhUR_4UKHZ3UCxwQMygBegUIARD4AQ'),
    Product(
        id: 'p10',
        title: 'Pressing Iron',
        description: 'Ironing clothes ',
        price: 49.99,
        imageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww-konga-com-res.cloudinary.com%2Fw_auto%2Cf_auto%2Cfl_lossy%2Cdpr_auto%2Cq_auto%2Fmedia%2Fcatalog%2Fproduct%2FV%2FQ%2F152503_1559516234.jpg&imgrefurl=https%3A%2F%2Fwww.konga.com%2Fproduct%2Fnulec-dry-pressing-iron-4341839&tbnid=Zn7dqDrCb3_vaM&vet=12ahUKEwi63v6mwILrAhVVMRoKHWHiBywQMygAegUIARDhAQ..i&docid=Yn9IIos3z81vpM&w=500&h=500&q=pressing%20iron&ved=2ahUKEwi63v6mwILrAhVVMRoKHWHiBywQMygAegUIARDhAQ'),
    Product(
        id: 'p11',
        title: 'Cup',
        description: 'Prepare any drink you want.',
        price: 49.99,
        imageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-na.ssl-images-amazon.com%2Fimages%2FI%2F71jMZuJU42L._SL1500_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.co.uk%2FAthena-Hotelware-Porcelain-Coffee-Dishwasher%2Fdp%2FB00237SEBU&tbnid=C0DjyQ3P9UwRCM&vet=12ahUKEwiF8oa9wILrAhVJw4UKHe9sB-EQMygGegUIARCOAg..i&docid=DA-i9QjymzA8OM&w=1500&h=1437&q=cup&ved=2ahUKEwiF8oa9wILrAhVJw4UKHe9sB-EQMygGegUIARCOAg'),
    Product(
        id: 'p12',
        title: 'T-shirt',
        description: 'Covers nakedness.',
        price: 49.99,
        imageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-na.ssl-images-amazon.com%2Fimages%2FI%2F91b2XxHIXCL._UX522_.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.in%2FHellcat-T-Shirts-Sleeve-Fashion-Reflect%2Fdp%2FB07P7HM7JM&tbnid=xUjpPmyh1nSXoM&vet=12ahUKEwi7hc7QwILrAhUOVhoKHZQfDdAQMygDegUIARCFAg..i&docid=5NSwR-H4iFM8OM&w=522&h=576&q=t-shirt&ved=2ahUKEwi7hc7QwILrAhUOVhoKHZQfDdAQMygDegUIARCFAg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id,
            loadedProducts[i].title, loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 30),
      ),
    );
  }
}
