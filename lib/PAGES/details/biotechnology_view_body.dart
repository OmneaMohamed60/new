import 'package:arshednyapp1/PAGES/design/content_text.dart';
import 'package:arshednyapp1/PAGES/design/custem_title.dart';
import 'package:arshednyapp1/PAGES/design/page_image.dart';
import 'package:flutter/material.dart';
//import 'package:graduation/views/wigets/content_text.dart';
//import 'package:graduation/views/wigets/custom_title.dart';
//import 'package:graduation/views/wigets/page_image.dart';

class BiotechnologyViewBody extends StatelessWidget {
  const BiotechnologyViewBody({
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
                  title: "Faculty of Biotechnology",
                  withOpacity: 0.9,
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: PageImage(imagePath: "assets/images/bio.jpeg"),
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
                        "Biotechnology is th translation of the term Biotechnology, meaning th e use of modern technology applications in treating living organisms at the cellular and subcellular level in order to achieve the maximum benefit from them industrially, agriculturally.",
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
                          "1- Misr University for Science and Technology (MUST)\n2- October University of modern Arts and Science (MSA)\n3- German University in Cairo (GUC)\n4- Nile National University (NU)\n5- Badr University (BUE)"),
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
