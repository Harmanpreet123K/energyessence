import 'package:flutter/material.dart';

class SloganWithImg extends StatelessWidget {
  const SloganWithImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90.0, right: 90.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/jas1.jpg',
            width: 500,
            height: 300,
          ),
          //Spacer(),
          const Text(
            '"Embark on an exploration of\nenergy essence.Reveal hidden\npotentials, unearth ancient wisdom, and\nconnect with a dynamic community of seekers.\nIgnite your transformational journey today!"',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20,
              wordSpacing: 8,
            ),
            textAlign: TextAlign.center,
            textWidthBasis: TextWidthBasis.longestLine,
          )
        ],
      ),
    );
  }
}