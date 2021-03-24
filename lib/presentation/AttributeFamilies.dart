import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import './widget/Header_section.dart';
import 'widget/ElevatedButtons.dart';
import './widget/BottomNavSection.dart';
// import 'widget/bottom_navigation_buttons.dart';

class AttributeFamilies extends StatefulWidget {
  @override
  _AttributeFamiliesState createState() => _AttributeFamiliesState();
}

class _AttributeFamiliesState extends State<AttributeFamilies> {
  var button = ActionButton();

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
            'Attribute Families',
            style: TextStyle(color: Colors.blueGrey.shade700),
          ),
        ),
      ),
      body: Column(
        children: [
          headerSection(text: 'Add Family'),
          Expanded(
            flex: 8,
            child: ListView.builder(
                //   physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          //shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          depth: 6,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('ID:'),
                                  Text('41'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Code:'),
                                  Text('8009'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('ID:'),
                                  Text('6'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Name:'),
                                  Text('Long Dress'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete_outline),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavSection(),
    );
  }
}
