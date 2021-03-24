import 'file:///C:/flutterprojects/bagisto_shop/lib/presentation/Catelog/AttributeFamilies.dart';
import 'file:///C:/flutterprojects/bagisto_shop/lib/presentation/Catelog/Categories.dart';
import 'package:flutter/material.dart';

import '../Catelog/Attributes.dart';
import 'bottom_navigation_buttons.dart';
import 'file:///C:/flutterprojects/bagisto_shop/lib/presentation/customers/Customers.dart';
Widget bottomNavSection(BuildContext context) {
  // int _selectedIndex = 0;
  // final  List<Widget> _widgetOptions=[
  //   AttributeFamilies(),
  //   Attributes(),
  //   Categories(),
  //   Customers()
  // ];
  var bottomNavButton = BottomNavigationButton();
  return BottomAppBar(
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Attributes()));
                }),
            bottomNavButton.bottomNavigationButton(
                icon: Icons.signal_cellular_alt,
                //  color: Colors.blue,
                iconButtonAction: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AttributeFamilies()));
                }),
            bottomNavButton.bottomNavigationButton(
                icon: Icons.list_alt,
                //  color: Colors.blue,
                iconButtonAction: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Categories()));
                }),
            bottomNavButton.bottomNavigationButton(
                icon: Icons.person,
                //  color: Colors.blue,
                iconButtonAction: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Customers()));
                }),
          ],
        ),
      ),
    ),
  );
}
