// ignore_for_file: file_names

import 'package:arshednyapp1/PAGES/design/content_text.dart';
import 'package:arshednyapp1/PAGES/design/custem_title.dart';
import 'package:arshednyapp1/PAGES/design/page_image.dart';
import 'package:flutter/material.dart';
//import 'package:graduation/views/wigets/content_text.dart';
//import 'package:graduation/views/wigets/custom_title.dart';
//import 'package:graduation/views/wigets/page_image.dart';

class EarthScienceviewbody extends StatelessWidget {
  const EarthScienceviewbody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50, bottom: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitle(
                  title: "Earth Science",
                  withOpacity: 0.9,
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: PageImage(imagePath: "assets/images/علوم الارض.jpeg"),
                ),
                SizedBox(height: 30),
                CustomTitle(
                  title: "Description",
                  withOpacity: 0.1,
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  child: ContentText(
                    text:
                        "The Faculty of Earth Sciences is located in only one university, which is Beni Suef University. The college is known as the Faculty of Economics and Investment in Egypt, where mineral resources, water resources, and petroleum are studied. The college also grants its students a bachelor’s degree in three separate and different specializations. These specializations are:\n\n1-Applied metallurgy specialty.\n2-Specialization in water and environmental geology.\n3-Specialization in engineering geology.",
                  ),
                ),
                SizedBox(height: 20),
                CustomTitle(
                  title: "In Universities",
                  withOpacity: 0.1,
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  child: ContentText(
                    text: "1- Beni Suef University",
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: SizedBox(
            width: 100,
            height: 40,
            child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pop();
                }, // You can change the icon
                backgroundColor:
                    const Color(0xff9C619B).withOpacity(0.6), // Colors.,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(64.0),
                ),
                child: const Icon(Icons.west, size: 24.0)),
          ),
        ),
      ),
    );
  }
}
