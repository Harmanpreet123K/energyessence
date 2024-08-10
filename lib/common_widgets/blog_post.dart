import 'package:flutter/material.dart';

class JBlogPost extends StatelessWidget {
  const JBlogPost({super.key, required this.title, required this.image, required this.desc});

  final String title,image,desc;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate padding and font sizes based on screen width
    double padding = screenWidth * 0.05;
    //double titleFontSize = screenWidth * 0.07;
    //double descFontSize = screenWidth * 0.05;
    double imageHeight = screenHeight * 0.5;
    double imageWidth = screenWidth * 0.4;
    return Padding(
      padding: EdgeInsets.only(left: padding),
      //const EdgeInsets.only(left:50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: const TextStyle(fontSize: 35),),
          const SizedBox(height: 20,),
          Image.asset(image,
          height: imageHeight,//350,
          width: imageWidth//600,
          ),
          const SizedBox(height: 20,),
          Text(desc,style: const TextStyle(fontSize: 25),),
        ],
      ),
    );
  }
}