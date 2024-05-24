// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors

import 'package:arshednyapp1/PAGES/design/content_text.dart';
import 'package:arshednyapp1/PAGES/design/custem_title.dart';
import 'package:arshednyapp1/PAGES/design/page_image.dart';
import 'package:flutter/material.dart';
//import 'package:graduation/views/wigets/content_text.dart';
//import 'package:graduation/views/wigets/custom_title.dart';
//import 'package:graduation/views/wigets/page_image.dart';

class DepartmentofArtEducation extends StatelessWidget {
  const DepartmentofArtEducation({
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
                  title: "Department of Art Education",
                  withOpacity: 0.9,
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: PageImage(imagePath: "assets/images/تربيه فنيه.jpeg"),
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
                        "This department works to develop the technical and technical skills of learners,Graduate of high school in any of its departments (literary/scientific), and the most important periods of study in this department are:-\n\n1-drawing\n2-decoration\n3-design\n4-sculpture\n4-printing\n5-woodworking\n6-glass painting\n7-other arts",
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
                    text:
                        "1-Cairo University\n2- South Valley University\n3- Minia University\n4- Alexandria University",
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
