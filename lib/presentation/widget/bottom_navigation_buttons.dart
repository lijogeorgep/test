import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationButton {
  Widget bottomNavigationButton(
      {IconData icon, Color color, void Function() iconButtonAction}) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
        size: 30,
      ),
      onPressed: iconButtonAction,
    );
  }
}
