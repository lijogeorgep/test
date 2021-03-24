import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import './widget/Header_section.dart';
import 'widget/ElevatedButtons.dart';
import './widget/BottomNavSection.dart';
// import 'widget/bottom_navigation_buttons.dart';

class Customers extends StatefulWidget {
  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
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
            'Customers',
            style: TextStyle(color: Colors.blueGrey.shade700),
          ),
        ),
      ),
      body: Column(
        children: [
          headerSection(text: 'Add Customers'),
          Expanded(
            flex: 8,
            child: ListView.builder(
                //   physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Name:'),
                                    Text('Niya'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Email:'),
                                    Text('niya@gmail.com'),
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
                                    Text('Gender:'),
                                    Text('Female'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Status:'),
                                    Text('General'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Phone:'),
                                    Text('+91-342425622'),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('status:'),
                                    Text(
                                      'Active',
                                      style: TextStyle(color: Colors.green),
                                    ),
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
                                    IconButton(
                                      icon: Icon(Icons.text_snippet_outlined),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.room),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
