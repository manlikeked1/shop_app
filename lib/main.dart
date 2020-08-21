import 'package:flutter/material.dart';

import './screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
          //Primary/main color for the app
          primarySwatch: Colors.teal,

          //Secondary color for the app
          accentColor: Colors.yellow,

          //Responsible for background color
          canvasColor: Colors.black54,

          //font-family
          fontFamily: 'Lato'),
      home: ProductOverviewScreen(),
      routes: {
        // ProductDetailS
      },
    );
  }
}
