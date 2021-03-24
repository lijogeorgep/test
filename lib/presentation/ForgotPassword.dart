import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'Login.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  Widget textFields({String text}) {
    String label = text;
    return TextField(
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/scaffold_bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 80.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Neumorphic(
                        child: Image.asset(
                          'assets/bagistoLogo.png',
                          scale: 2,
                        ),
                      ),
                    ),
                    // textFields(text: 'Username/Email'),
                    SizedBox(
                      height: 40,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.convex,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: ' Username/Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.convex,
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: ' Password',
                          //prefixIcon: Icon(Icons.visibility_off),
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 400,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.blue.shade900),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.grey),
                              elevation: MaterialStateProperty.all<double>(5),
                            ),
                            onPressed: () {},
                            child: Text('Update'),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 40,
                    // ),
                    Container(
                      // margin: EdgeInsets.only(top: 50),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 400,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              // backgroundColor: MaterialStateProperty.all<Color>(
                              //     Colors.blue.shade900),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.grey),
                              elevation: MaterialStateProperty.all<double>(5),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text(
                              'Go to Login',
                              style: TextStyle(color: Colors.blue.shade900),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
