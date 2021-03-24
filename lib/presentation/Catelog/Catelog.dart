import 'package:flutter/material.dart';
import '../Catelog/Products.dart';
import '../Catelog/Categories.dart';
import '../Catelog/Attributes.dart';
import '../Catelog/AttributeFamilies.dart';

class Catelog extends StatefulWidget {
  @override
  _CatelogState createState() => _CatelogState();
}

class _CatelogState extends State<Catelog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Catlog',
          style: TextStyle(color: Colors.blueGrey.shade700),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Products()));
                },
                child: Text('Products')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Categories()));
                },
                child: Text('Categories')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Attributes()));
                },
                child: Text('Add Attributes')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AttributeFamilies()));
                },
                child: Text('Add Family'))
          ],
        ),
      ),
    );
  }
}
