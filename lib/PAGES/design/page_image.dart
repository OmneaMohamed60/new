import 'package:flutter/material.dart';

class PageImage extends StatelessWidget {
  const PageImage({
    super.key,
    required this.imagePath,
  });
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(64),
        bottomRight: Radius.circular(64),
      ),
      child: Image.asset(
        imagePath,
      ),
    );
  }
}
