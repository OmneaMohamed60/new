import 'package:flutter/material.dart';

class ContentText extends StatelessWidget {
  const ContentText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }
}
