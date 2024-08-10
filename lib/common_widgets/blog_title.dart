import 'package:flutter/material.dart';

class JBlogTitle extends StatelessWidget {
  const JBlogTitle({super.key, required this.title, required this.text});

  final String title, text;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate font sizes and spacing based on screen width
    double titleFontSize = screenWidth * 0.045;
    double textFontSize = screenWidth * 0.025;
    double verticalSpacing = screenHeight * 0.05;
    return Column(
      children: [
        Center(
            child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: titleFontSize/*32*/),
        )),
        SizedBox(
          height: verticalSpacing,//40,
        ),
        Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: textFontSize,//28,
              wordSpacing: 8,
            ),
            textAlign: TextAlign.center,
            textWidthBasis: TextWidthBasis.longestLine,
          ),
        ),
      ],
    );
  }
}
