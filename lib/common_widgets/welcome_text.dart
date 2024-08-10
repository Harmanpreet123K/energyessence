import 'package:flutter/material.dart';

class JWelcomeText extends StatelessWidget {
  const JWelcomeText({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;

    double horizontalPadding = screenWidth < 600 ? 20.0 : 90.0;
    double containerWidth = screenWidth < 600 ? screenWidth - 40.0 : 1100.0;
    double fontSize = screenWidth * 0.023;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        width: containerWidth,//1100,
        color:const Color.fromARGB(255, 230, 227, 227),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize//28
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}