// ignore_for_file: depend_on_referenced_packages

import 'package:arshednyapp1/PAGES/design/content_text.dart';
import 'package:arshednyapp1/PAGES/design/custem_title.dart';
import 'package:arshednyapp1/PAGES/design/page_image.dart';
import 'package:flutter/material.dart';

class Surveyingviewbody extends StatelessWidget {
  const Surveyingviewbody({
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
                  title: "Surveying ",
                  withOpacity: 0.9,
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: PageImage(imagePath: "assets/images/المساحه.jpeg"),
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
                        "It is considered a broad division, one of the most prominent majors and specializations that are present in the Geography Department in the Colleges of Arts, and that are found in scientific forums. This is what makes Arts students a special division due to their ability to join this division in the third year of the college while fulfilling some of the conditions that must be met upon admission. In college, during the various academic groups.The College of Surveying is one of the colleges that offers educational programs in the field of surveying and geodesy. Surveying is a branch of engineering science that deals with measuring and determining distances, angles, and areas on the surface of the Earth and other physical objects. Surveying is applied in many fields such as civil engineering, marine engineering, manufacturing, geology, architecture, and scientific research.The Department of Surveying is usually part of the Faculty of Engineering or the Faculty of Applied Sciences in universities. The department offers multiple study programs including bachelor's, master's and doctoral degrees in surveying and geodesy. Courses are taught in the department including traditional surveying and modern surveying using modern technologies such as GIS, remote sensing and geomatics.",
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
                        "1- Al-Arish University\n2- Cairo University\n3-Ain Shams University\n4- Benha University\n5- Helwan University\n6- Alexandria University\n7- Mansoura University\n8- Suez University\n9- Zagazig University\n10- Tanta University\n11- Port Said University\n12- Cairo University Mentor.",
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
