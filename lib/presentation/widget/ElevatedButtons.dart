import 'package:flutter/material.dart';

class ActionButton {
  Widget actionButton({String text, void Function() buttonAction}) {
    return SizedBox(
      height: 50,
      width: 150,
      child: ElevatedButton(
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all<Color>(Colors.grey[900]),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.white60),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: buttonAction,
        child: Text(text),
      ),
    );
  }
}
