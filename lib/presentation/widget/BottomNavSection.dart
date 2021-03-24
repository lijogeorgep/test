import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'bottom_navigation_buttons.dart';

Widget bottomNavSection() {
  var bottomNavButton = BottomNavigationButton();
  return Neumorphic(
    style: NeumorphicStyle(
      shape: NeumorphicShape.concave,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
      depth: 10,
    ),
    child: BottomAppBar(
      // color: Colors.white60,
      //  shape: CircularNotchedRectangle(),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bottomNavButton.bottomNavigationButton(
                  icon: Icons.trending_up,
                  //  color: Colors.blue,
                  iconButtonAction: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => HomePage()));
                  }),
              bottomNavButton.bottomNavigationButton(
                  icon: Icons.signal_cellular_alt,
                  //  color: Colors.blue,
                  iconButtonAction: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Discount()));
                  }),
              bottomNavButton.bottomNavigationButton(
                  icon: Icons.list_alt,
                  //  color: Colors.blue,
                  iconButtonAction: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Report()));
                  }),
              bottomNavButton.bottomNavigationButton(
                  icon: Icons.person,
                  //  color: Colors.blue,
                  iconButtonAction: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => UserAccount()));
                  }),
            ],
          ),
        ),
      ),
    ),
  );
}
