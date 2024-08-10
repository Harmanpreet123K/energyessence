import 'package:flutter/material.dart';

class JRightsResrv extends StatelessWidget {
  const JRightsResrv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate padding based on screen width
    double horizontalPadding = screenWidth * 0.1;
    double bottomPadding = screenWidth * 0.06;
    double fontSize = screenWidth * 0.03;
    return Padding(
      padding:
          EdgeInsets.only(
            left: horizontalPadding,//90.0, 
            right: horizontalPadding,//90.0, 
            bottom: bottomPadding//60.0
            ),
      child: Text(
        'Energy essence.Copyright 2024.All Rights Reserved.',
        style: TextStyle(fontWeight: FontWeight.w600, 
        fontSize: fontSize//20,
        ),
      ),
    );
  }
}