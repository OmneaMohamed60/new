// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, must_be_immutable, camel_case_types, unused_import, avoid_web_libraries_in_flutter, non_constant_identifier_names

import 'dart:js';

import 'package:arshednyapp1/PAGES/details/biotechnology_view_body.dart';
import 'package:arshednyapp1/PAGES/training.dart';
import 'package:arshednyapp1/PAGES/univeirsties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home.dart';

class item {
  String imgpath;
  String name;

  item({required this.imgpath, required this.name});

  void Selectitem(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (c) => index(item as int),
      ),
    );
  }
}

index(int i) {}

class Home extends StatelessWidget {
  final List<item> items = [
    item(imgpath: "assets/images/COOL.webp", name: "university"),
    item(imgpath: "assets/images/Training.jpg", name: "Tranining")
  ];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Selctitem(context),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 40),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  var gestureDetector = GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => univirsity()));
                    },
                    child: GridTile(
                      child: Stack(
                        children: [
                          Positioned(
                            top: -10,
                            bottom: -9,
                            right: 0,
                            left: 0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: Image.asset(
                                items[index].imgpath,
                              ),
                            ),
                          ),
                        ],
                      ),
                      footer: GridTileBar(
                        trailing: Text(""),
                        leading: Text(""),
                        title: Text(
                          items[index].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 33,
                              fontStyle: FontStyle.italic,
                              color: Color.fromARGB(255, 37, 37, 37),
                              fontWeight: FontWeight.bold,
                              height: -1),
                        ),
                      ),
                    ),
                  );
                  return gestureDetector;
                }),
          ),
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/test.jpg"),
                            fit: BoxFit.cover),
                      ),
                      accountName: Text("ali Hassan",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          )),
                      accountEmail: Text("ali@yahoo.com"),
                      currentAccountPictureSize: Size.square(99),
                      currentAccountPicture: CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              AssetImage("assets/images/person icon.png")),
                    ),
                    ListTile(
                        title: Text("Favorite"),
                        leading: Icon(Icons.star),
                        onTap: () {}),
                    ListTile(
                        title: Text("About"),
                        leading: Icon(Icons.help_center),
                        onTap: () {}),
                    ListTile(
                        title: Text("Logout"),
                        leading: Icon(Icons.exit_to_app),
                        onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 166, 119, 172),
            title: Text("ARSHEDNY "),
            actions: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                          child: Text(
                            "",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Selctitem(BuildContext context) {}
