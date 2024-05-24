// ignore_for_file: unused_import, prefer_const_constructors, duplicate_import, undefined_shown_name
//import 'package:arshednyapp1/PAGES/welcome.dart' show Welcome;
import 'package:arshednyapp1/PAGES/details/Earth%20Science_view_body.dart';
import 'package:arshednyapp1/PAGES/Login.dart' show Login;
import 'package:arshednyapp1/PAGES/Signup.dart' show Signup, sign_up;
import 'package:arshednyapp1/PAGES/details/Space%20and%20Remote_view_body.dart';
import 'package:arshednyapp1/PAGES/home.dart';
import 'package:arshednyapp1/PAGES/details/biotechnology_view_body.dart';
import 'package:arshednyapp1/PAGES/home.dart';
import 'package:arshednyapp1/PAGES/univeirsties.dart';
import 'package:arshednyapp1/PAGES/welcome.dart';
import 'PAGES/details/BIS_view_body.dart';
import 'PAGES/details/Department of Art Education _view_body.dart';
import 'PAGES/training.dart';
import 'package:arshednyapp1/PAGES/univeirsties.dart' show univirsity;
import 'package:flutter/material.dart';
import 'PAGES/details/Surveying_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        'home_uni': (ctx) => univirsity(),
      },
    );
  }
}
