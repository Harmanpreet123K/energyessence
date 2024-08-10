import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jasmeen/pages/home/widgets/latest_posts.dart';
import 'package:jasmeen/pages/health/health.dart';
import 'package:jasmeen/pages/lifestyle/lifestyle.dart';
import 'package:jasmeen/pages/personal_growth/personal_growth.dart';
import 'package:jasmeen/pages/spirituality/spirituality.dart';
import 'package:jasmeen/common_widgets/common_bottom.dart';

import '../../common_widgets/appbar.dart';
import '../../common_widgets/headbar.dart';
import 'widgets/grid_item.dart';
import 'widgets/slogan_image.dart';
import '../../common_widgets/welcome_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

  //var arrImages = ['assets/images/health.jpg','assets/images/lifestyle.jpeg','assets/images/personal_growth.jpg','assets/images/spirituality.jpg'];
  //var arrTitles = ['Tips For Staying Hydrated\nThroughout The Day','Tips For Balanced Diet','5 Superfoods For Eye Health','5 Superfood To Support Hair\nHealth'];

    return Scaffold(
      appBar:const JAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
        return SingleChildScrollView(
          child: Column(
            children: [
              const JHeadBar(),
              const SizedBox(
                height: 80,
              ),
              const SloganWithImg(),
              const SizedBox(
                height: 90,
              ),
        
              Padding(
                padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1), // 10% of screen width
                //const EdgeInsets.only(left: 90.0, right: 90.0),
                child: SizedBox(
                  width:  screenWidth < 600 ? screenWidth * 0.6 : screenWidth * 0.8, // 80% of screen width
                  //1000,
                  //height: 700,
                  child: GridView.count(
                    crossAxisCount: screenWidth > 600 ? 2 : 1,
                    //2, // Number of columns
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio:screenWidth > 600 ? 1.5 : 1,
                        //1.5, // Adjust the aspect ratio to suit your images
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      JGridItem(onPressed: () => Get.to(() => const LifestylePage()),image: 'assets/images/lifestyle.jpeg',title: 'LIFESTYLE'),
                      JGridItem( onPressed: () => Get.to(() => const SpiritualityPage()),image: 'assets/images/spirituality.jpg', title: 'SPIRITUALITY',),
                      JGridItem(onPressed: () => Get.to(() => const PersonalGrowthPage()), image: 'assets/images/personal_growth1.jpg', title: 'PERSONAL GROWTH'),
                      JGridItem(onPressed: () => Get.to(() => const HealthPage()), image: 'assets/images/health.jpg', title: 'HEALTH'),
                    ],
                  ),
                ),
              ),
        
              const SizedBox(
                height: 60,
              ),
              const JWelcomeText(text: "Welcome to Energy Essence!Here, we're dedicated to fueling your life with vibrant energy and vitality.Our products are carefully formulated to invigorate your body and uplift your spirits,so you can tackle each day with vigor and enthusiasm.Join us on a journey to rediscover your inner essence and embrace a life full of energy and vitality!",),
              const SizedBox(height: 80,),
              const LatestPost(
                heading: 'Popular Posts', 
                img1: 'assets/images/spirituality.jpg', title1: '5 Superfood To Support Hair\nHealth', 
                img2: 'assets/images/lifestyle.jpeg', title2: 'Tips For Balanced Diet', 
                img3: 'assets/images/personal_growth.jpg', title3: '5 Superfoods For Eye Health',  
                ),
              
              const SizedBox(height: 80,),
              const LatestPost(
                heading: 'Latest Posts', 
                img1: 'assets/images/health.jpg', title1: 'Tips For Staying Hydrated\nThroughout The Day', 
                img2: 'assets/images/personal_growth1.jpg', title2: 'Tips For Balanced Diet', 
                img3: 'assets/images/personal_growth.jpg', title3: '5 Superfoods For Eye Health',  
                ),
        
        
              // SizedBox(
              //   height: 450,
              //   child: ListView.builder(
              //     //padding: EdgeInsets.only(left: 90,right: 90),
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return HealthPost(image: arrImages[index], title: arrTitles[index]);
              //     },
              //     itemCount: arrImages.length,
              //     itemExtent: 430,
              //     ),
              // ),
        
        
              const SizedBox(
                height: 80,
              ),
              const JBottom()
            ],
          ),
        );
        }
      ),
    );
  }
}


