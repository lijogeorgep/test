import 'package:design1/presentation/customers/Customers.dart';
import 'package:flutter/material.dart';
import '../customers/Reviews.dart';

class CustomerHome extends StatefulWidget {
  @override
  _CustomerHomeState createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Customers',
          style: TextStyle(color: Colors.blueGrey.shade700),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
                leading: Text('Customers'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Customers()));
                }),
            ListTile(
                leading: Text('Reviews'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Reviews()));
                }),
          ],
        ),
      ),
    );
  }
}
