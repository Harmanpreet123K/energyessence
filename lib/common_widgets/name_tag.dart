import 'package:flutter/material.dart';

class JNameTag extends StatelessWidget {
  const JNameTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate padding and font size based on screen size
    double padding = screenWidth * 0.005;
    //double fontSize = screenWidth * 0.06;
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(padding/*6.0*/),
        child: const Text(
          'Energy essence',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

