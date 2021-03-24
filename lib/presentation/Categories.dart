import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import './widget/Header_section.dart';
import 'widget/ElevatedButtons.dart';
import 'widget/bottom_navigation_buttons.dart';
import './widget/BottomNavSection.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  //var header = HeaderSection();
  var button = ActionButton();
  var bottomNavButton = BottomNavigationButton();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Categories',
            style: TextStyle(color: Colors.blueGrey.shade700),
          ),
        ),
      ),
      body: Column(
        children: [
          headerSection(text: 'Add Categories'),
          Expanded(
            flex: 8,
            child: GridView.builder(
                padding: EdgeInsets.all(20),
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        color: Colors.white54,
                        shadowDarkColor: Colors.grey.shade900,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10)),
                        depth: 5,
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Image(
                                fit: BoxFit.cover,
                                width: 350,
                                height: 350,
                                image: AssetImage(
                                  'assets/shirt.jpg',
                                  // snapshot.data[index]['image']'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Gents',
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //         fit: BoxFit.cover,
                    //         image: AssetImage('assets/gents.jpg'),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // onTap: () {
                    //   print('gents tapped');
                    // },
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavSection(),
    );
  }
}
