import 'package:flutter/material.dart';

import '../../../common_widgets/post.dart';

class LatestPost extends StatelessWidget {
  const LatestPost({super.key, required this.heading,required this.img1, required this.img2, required this.img3, required this.title1, required this.title2, required this.title3});

  final String heading,img1,img2,img3,title1,title2,title3;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

     bool isSmallScreen = MediaQuery.of(context).size.width < 850;
    double largeSpacing = screenHeight * 0.1;
    return Column(
      children: [
          Text(heading,style: const TextStyle(fontSize: 38,fontWeight: FontWeight.w200),),
            SizedBox(height: screenWidth < 600 ? 20 : 50,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 20.0 : 90.0),
              child: screenWidth < 680
              ? Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: JPost(image: img1, title: title1),
                    ),
                    SizedBox(height: largeSpacing),
                    InkWell(
                      onTap: () {},
                      child: JPost(image: img2, title: title2),
                    ),
                    SizedBox(height: largeSpacing),
                    InkWell(
                      onTap: () {},
                      child: JPost(image: img3, title: title3),
                    ),
                  ],
                )
              : SizedBox(
                height: 368.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  InkWell(onTap:() {},child: JPost(image: img1 , title: title1)),
                  //SizedBox(width: smallSpacing,),
                  InkWell(onTap:() {},child: JPost(image: img2, title: title2)),
                  //SizedBox(width: smallSpacing,),
                  InkWell(onTap:() {},child: JPost(image: img3, title: title3)),
                ],),
              ),
            ),
      ],
    );
  }
}