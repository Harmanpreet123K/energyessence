import 'package:flutter/material.dart';

class ShopPost extends StatelessWidget {
  const ShopPost({
    super.key, required this.image, required this.title,
  });

  final String image,title;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double containerWidth = screenWidth < 600 ? screenWidth*0.6 : screenWidth * 0.276;
    double imageHeight = screenWidth < 600 ? screenHeight*0.32 : screenHeight * 0.45;
    double fontSize = screenWidth * 0.025;
    return Column(
      children: [
        Image.asset(
          image,
          height: imageHeight,//250,
          width: containerWidth,//180,
          ),
        SizedBox(height: screenWidth < 600 ? 10 :15),
        Text(title,style: TextStyle(fontSize: fontSize,//20,
        color: const Color.fromARGB(255, 142, 142, 142),wordSpacing: 4,letterSpacing: 1.5),
        textAlign: TextAlign.center,
        )
      ],);
  }
}