import 'package:flutter/material.dart';
import 'package:jasmeen/common_widgets/blog_items.dart';
import 'package:jasmeen/common_widgets/blog_title.dart';
import 'package:jasmeen/common_widgets/common_bottom.dart';
import 'package:jasmeen/common_widgets/welcome_text.dart';

import '../../common_widgets/blog_appbar.dart';

class HealthBlogPage extends StatelessWidget {
  const HealthBlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return const Scaffold(
     appBar: JBLogAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top:70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JBlogTitle(title: 'TIPS FOR BALANCED DIET',text: "Struggling to find the right balance in your diet? You're not alone. A balanced diet\ndoesn't have to be complicated—it’s about choosing a variety of nutrient-rich foods\nthat fuel your body and energize your life. Let's explore some practical tips for\nachieving a balanced diet:",),
              
              SizedBox(
                height: 60,
              ),
          
            JBlogColumn(),
              
            SizedBox(height: 100,),
            JWelcomeText(text: "A balanced diet is key to a healthy lifestyle. Embrace variety, choose\nnutrient-rich foods, and maintain moderation. By planning ahead,\nstaying hydrated, and listening to your body, you can enjoy a\nsustainable approach to nutrition that supports your overall health and\nvitality.",),
          
             SizedBox(
                height: 60,
              ),
            JBottom(),
            ]
      ),
    )
      )
    );

  }
}

