// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, must_be_immutable, camel_case_types, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'training.dart';

class Item {
  String imgpath;
  String name;

  Item({required this.imgpath, required this.name});
}

class Trianing extends StatelessWidget {
  final List<Item> Items = [
    Item(imgpath: "assets/images/ai.jpeg", name: "Artificial Intelligence"),
    Item(
        imgpath: "assets/images/electronic.jpeg",
        name: "Electronic Circuit Design"),
    Item(
        imgpath: "assets/images/java.jpeg",
        name: "Developing web applications"),
    Item(
        imgpath: "assets/images/marketing.jpeg",
        name: "Social Media Marketing"),
    Item(
        imgpath: "assets/images/mars exploration.jpeg",
        name: "Mars exploration"),
    Item(imgpath: "assets/images/medical.jpeg", name: "Medical technology"),
    Item(imgpath: "assets/images/nurse.jpeg", name: "Nursing courses"),
    Item(imgpath: "assets/images/PAYTHON.jpeg", name: "Learn Python "),
    Item(imgpath: "assets/images/soloar power.jpeg", name: "Solar Power"),
    Item(imgpath: "assets/images/wind power.jpeg", name: "Wind power"),
  ];

  Trianing({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 22),
              itemCount: Items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: GridTile(
                    child: Stack(
                      children: [
                        Positioned(
                          top: -3,
                          bottom: -9,
                          right: 1,
                          left: 1,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                Items[index].imgpath,
                              )),
                        ),
                      ],
                    ),
                    footer: GridTileBar(
                      trailing: Text(""),
                      leading: Text(""),
                      title: Text(
                        Items[index].name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "myfont",
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
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
          backgroundColor: Color(0xFFA677AC),
          title: Text("Training"),
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                        child: Text(
                          "2",
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
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
    );
  }
}
