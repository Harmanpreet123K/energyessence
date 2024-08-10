import 'package:flutter/material.dart';
import 'package:jasmeen/common_widgets/post.dart';

class LifestylePageContent extends StatelessWidget {
  const LifestylePageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.only(left: 90.0, right: 90.0),
     child: SizedBox(
       width: 1200,
       height: 800,
       child: GridView.count(
         crossAxisCount: 3, // Number of columns
         crossAxisSpacing: 15,
         mainAxisSpacing: 25,
         childAspectRatio:
             1, // Adjust the aspect ratio to suit your images
         children: [
           InkWell(
            onTap:() {},
             child: const JPost(
               image: 'assets/images/lifestyle.jpeg',
               title: 'Benefits Of Exercising Regularly',
             ),
           ),
           InkWell(
            onTap:() {},
             child: const JPost(
               image: 'assets/images/lifestyle.jpeg',
               title: 'Tips To Help You Wake Up Early',
             ),
           ),
           InkWell(
            onTap:() {},
             child: const JPost(
               image: 'assets/images/lifestyle.jpeg',
               title: 'Simple Steps To Embrace The\nPresent Moment',
             ),
           ),
           InkWell(
            onTap:() {},
             child: const JPost(
               image: 'assets/images/lifestyle.jpeg',
               title: '7 Impacts Of Overthinking On\nMental Health',
             ),
           ),
           InkWell(
            onTap:() {},
             child: const JPost(
               image: 'assets/images/lifestyle.jpeg',
               title: 'The Psychological Impact Of Words',
             ),
           ),
           InkWell(
            onTap:() {},
             child: const JPost(
               image: 'assets/images/lifestyle.jpeg',
               title: 'Breakfast Myth vs Facts',
             ),
           ),
            
         ],
       ),
     ),
                );
  }
}