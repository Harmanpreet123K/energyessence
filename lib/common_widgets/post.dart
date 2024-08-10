import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JPost extends StatelessWidget {
  const JPost({
    super.key, required this.image, required this.title,
  });

  final String image,title;

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate sizes based on screen dimensions
    double containerWidth = screenWidth < 680 ? screenWidth*0.75 : screenWidth * 0.25;
    double imageHeight = screenWidth < 680 ? screenHeight*0.38 : screenHeight * 0.45;
     final double itemSpacing = screenWidth < 600 ? 10.0 : 15.0;
    double textFontSize = screenWidth < 680 ? screenWidth*0.05 : screenWidth * 0.021;
    return Column(
        children: [
          SizedBox(
            height: imageHeight,//280,
            width: containerWidth,//350,
                            child: Image(
                                image: AssetImage(image),
                                fit: BoxFit.cover,
                            ),
                          ),
          SizedBox(height: itemSpacing,),
          Text(title,style: TextStyle(
            fontSize: textFontSize,//20,
            color: const Color.fromARGB(255, 142, 142, 142)),
          textAlign: TextAlign.center,
          )
        ],
    );
  }
}