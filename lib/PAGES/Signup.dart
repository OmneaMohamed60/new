// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, file_names

import 'package:arshednyapp1/PAGES/home.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class sign_up extends StatelessWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Scaffold(
            body: Container(
              height: double.infinity,
              width: double.infinity,
              color: Color.fromARGB(255, 252, 252, 252),
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 33,
                          fontFamily: "myfont",
                          color: Color.fromARGB(255, 87, 85, 85)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      height: 222,
                      width: 100,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.purple[800],
                            ),
                            hintText: "Your Email :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.phone,
                              color: Colors.purple[800],
                            ),
                            hintText: "Your Phone number :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(66),
                      ),
                      width: 266,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              Icons.visibility,
                              color: Colors.purple[900],
                            ),
                            icon: Icon(
                              Icons.lock,
                              color: Colors.purple[800],
                              size: 19,
                            ),
                            hintText: "Password :",
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 90, vertical: 8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontSize: 24, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ",
                        ),
                        Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 299,
                      child: Row(children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.50,
                            color: Colors.purple[500],
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.purple[500],
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.50,
                            color: Colors.purple[500],
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 44),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromARGB(255, 87, 85, 85),
                                    width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              color: Colors.purple[500],
                              height: 44,
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromARGB(255, 87, 85, 85),
                                    width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              color: Colors.purple[500],
                              height: 44,
                            ),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Container(
                            padding: EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromARGB(255, 87, 85, 85),
                                    width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              color: Colors.purple[500],
                              height: 44,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                    left: 0,
                    child: Image.asset(
                      "assets/images/main_top.png",
                      width: 111,
                    )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/login_bottom.png",
                      width: 111,
                    )),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
