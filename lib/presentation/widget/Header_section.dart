import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'ElevatedButtons.dart';

Widget headerSection({String text}) {
  var button = ActionButton();
  return Expanded(
    flex: 2,
    child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Neumorphic(
                boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(12)),
              style: NeumorphicStyle(
                shape: NeumorphicShape.convex,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button.actionButton(
                    text: text,
                    buttonAction: () {
                      //:TODO product button fuctionalities...
                    }),
                SizedBox(
                  width: 120,
                ),
                SizedBox(
                  height: 50,
                  width: 100,
                  child: Neumorphic(
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(12)),
                    child: TextButton.icon(
                      label: Text('Filter'),
                      icon: Icon(Icons.filter_list),
                      onPressed: () {
                        //:TODO filter on press funciton
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
