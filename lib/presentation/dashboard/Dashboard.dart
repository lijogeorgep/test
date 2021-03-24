import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Dash Board',
          style: TextStyle(
            color: Colors.blueGrey.shade700,
          ),
        ),
      ),
      body: Center(
        child: Text('dash board.'),
      ),
    );
  }
}
