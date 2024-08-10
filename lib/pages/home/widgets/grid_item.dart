import 'package:flutter/material.dart';

class JGridItem extends StatelessWidget {
  const JGridItem({
    super.key,required this.onPressed, required this.image, required this.title,
  });

  final VoidCallback onPressed;
  final String image,title; 

  @override
  Widget build(BuildContext context) {
     final double screenWidth = MediaQuery.of(context).size.width;

     final double scaledWidth = screenWidth < 600 ? screenWidth * 0.6 :screenWidth;
     double fontSize = screenWidth < 600 ? screenWidth*0.04 : screenWidth * 0.015;
    return InkWell(
      onTap: onPressed,
      child: Stack(
        children:[Container(
          width: scaledWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
            //height:screenWidth < 600 ? 20 : 30,
            //width:screenWidth < 600 ? 100 : width, //140,
            color: Colors.white,
            child:  Text(title,style: TextStyle(fontWeight: FontWeight.w400,fontSize: fontSize //18
            ),),
          ),
        )
        ]
      ),
    );
  }
}