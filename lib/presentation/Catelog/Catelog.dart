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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
                leading: Text('Products'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Products()));
                }),
            ListTile(
                leading: Text('Categories'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Categories()));
                }),
            ListTile(
                leading: Text('Attributes'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Attributes()));
                }),
            ListTile(
                leading: Text('Attribute Families'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AttributeFamilies()));
                }),
          ],
        ),
      ),
    );
  }
}
