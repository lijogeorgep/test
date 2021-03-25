import 'package:design1/presentation/widget/ElevatedButtons.dart';
import 'package:design1/presentation/widget/bottom_navigation_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../widget/Header_section.dart';
import '../widget/BottomNavSection.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var button = ActionButton();
  var bottomNavButton = BottomNavigationButton();
  // Future<List<dynamic>> getData() async {
  //   var result = await http
  //       .get('https://my.api.mockaroo.com/products.json?key=869c1570');

  //   if (result.statusCode == 200) {
  //     return json.decode(result.body);
  //   } else {
  //     throw Exception('Failed to load API');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Products',
          style: TextStyle(color: Colors.blueGrey.shade700),
        ),
      ),
      body: Column(
        children: [
          headerSection(text: 'Add Products'),
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
                      height: 100,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Neumorphic(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                          style: NeumorphicStyle(
                            //shape: NeumorphicShape.concave,

                            depth: 6,
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.only(top: 12),
                            leading: CircleAvatar(
                              radius: 60.0,
                              backgroundImage: AssetImage(
                                'assets/shirt.jpg',
                                // snapshot.data[index]['image']'),
                              ),
                            ),
                            title: Text(
                              'Branded shirt',
                              // (snapshot.data[index]['title']),
                              //style: TextStyle(color: Colors.teal),
                            ),
                            subtitle: Text(
                              'Nike',
                              //(snapshot.data[index]['brand']

                              // style: TextStyle(
                              //   color: Colors.blue,
                              // ),
                            ),
                            trailing: Text(
                              '\$300',
                              //(snapshot.data[index]['price']),
                              style: TextStyle(color: Colors.blue),
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

    );
  }
}
