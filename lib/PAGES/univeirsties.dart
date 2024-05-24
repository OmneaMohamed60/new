// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, must_be_immutable, camel_case_types, unused_import, non_constant_identifier_names

import 'package:arshednyapp1/PAGES/details/BIS_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'details/Surveying_view_body.dart';
import 'details/biotechnology_view_body.dart';
import 'home.dart';

class Item {
  String imgpath;
  String name;

  Item({required this.imgpath, required this.name});
}

class univirsity extends StatelessWidget {
  final List<Item> Items = [
    Item(imgpath: "assets/images/bio.jpeg", name: "Biotechmology"),
    Item(
        imgpath: "assets/images/bis.jpeg", name: "Business Information System"),
    Item(
        imgpath: "assets/images/المساحه.jpeg",
        name: "Geographic information system"),
    Item(
        imgpath: "assets/images/تربيه فنيه.jpeg",
        name: "Faculty of Art Education"),
    Item(
        imgpath: "assets/images/علوم الارض.jpeg",
        name: "Faculty Of Earth Sciences"),
    Item(
        imgpath: "assets/images/علوم الملاحه.jpeg",
        name: "Faculty Of Navigation Science")
  ];
  void selectuni(BuildContext context) {}

  univirsity({super.key});

  @override
  Widget build(BuildContext context) {
    var container = Container(
        child: Text(
          "",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color.fromARGB(211, 164, 255, 193), shape: BoxShape.circle));
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const BiotechnologyViewBody()));
                  },
                  child: GridTile(
                    child: Stack(
                      children: [
                        Positioned(
                          top: -3,
                          bottom: -9,
                          right: 0,
                          left: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              Items[index].imgpath,
                              //olor: Colors.grey.withOpacity(0.2),
                            ),
                          ),
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
                            color: Color.fromARGB(255, 15, 15, 15),
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
          backgroundColor: Color.fromARGB(255, 166, 119, 172),
          title: Text(" univirsity"),
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    container,
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.home,
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
