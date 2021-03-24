import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import './ForgotPassword.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    SizedBox(
                      height: 40,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Text('Forgot Password?',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPassword()));
                            // print('forgot link presssed');
                          },
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
                            child: Text('Log In'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
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
