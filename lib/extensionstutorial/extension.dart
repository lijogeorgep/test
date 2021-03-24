import 'package:flutter/material.dart';

extension ExtendedText on Widget {
  Widget extend() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFF42A5F5),
        ),
        child: this,
      ),
    );
  }
}
