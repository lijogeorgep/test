import 'package:design1/presentation/Products.dart';
import 'package:flutter/material.dart';
import './presentation/Categories.dart';
import './presentation/Customers.dart';
import './presentation/Login.dart';
import './presentation/Attributes.dart';
import './presentation/AttributeFamilies.dart';
import './presentation/Reviews.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Reviews(),
      //AttributeFamilies(),
      // Attributes(),

      //Categories(),
      //Products(),
      //Customers(),

      // Login(),
    );
  }
}
