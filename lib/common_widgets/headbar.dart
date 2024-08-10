import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/health/health.dart';
import '../pages/lifestyle/lifestyle.dart';
import '../pages/personal_growth/personal_growth.dart';
import '../pages/spirituality/spirituality.dart';

class JHeadBar extends StatelessWidget {
  const JHeadBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate padding and font size based on screen size
    double horizontalPadding = screenWidth * 0.07;
    double topPadding = screenHeight * 0.1;
    //double fontSize = screenWidth * 0.04;
    return Padding(
      padding:
          EdgeInsets.only(
            top: topPadding,//90.0, 
            right: horizontalPadding,//90.0, 
            left: horizontalPadding//90.0
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () => Get.to(() => const HealthPage()),
              child: const Text(
                'HEALTH',
                style: TextStyle(
                    color: const Color.fromARGB(255, 142, 142, 142),
                    fontSize: 30
                    ),
              )),
          TextButton(
              onPressed: () => Get.to(() => const LifestylePage()),
              child: const Text(
                'LIFESTYLE',
                style: TextStyle(
                    color: Color.fromARGB(255, 142, 142, 142),
                    fontSize: 30
                    ),
              )),
          TextButton(
              onPressed: () => Get.to(() => const SpiritualityPage()),
              child: const Text(
                'SPIRITUALITY',
                style: TextStyle(
                    color: Color.fromARGB(255, 142, 142, 142),
                    fontSize: 30
                    ),
              )),
          TextButton(
              onPressed: () => Get.to(() => const PersonalGrowthPage()),
              child: const Text(
                'PERSONAL GROWTH',
                style: TextStyle(
                    color: Color.fromARGB(255, 142, 142, 142),
                    fontSize: 30
                    ),
              ))
        ],
      ),
    );
  }
}