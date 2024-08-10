import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/page_controller.dart';

class JBottomNumbers extends StatelessWidget {
  const JBottomNumbers({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final PageControllerGetX controller = Get.put(PageControllerGetX());

     double screenWidth = MediaQuery.of(context).size.width;

     // Calculate font size and padding based on screen width
    //double fontSize = screenWidth * 0.05;
    double horizontalPadding = screenWidth * 0.01;
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04/*16.0*/),
      child: Obx(() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return InkWell(
              onTap: () {
                controller.pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding/*8.0*/),
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: controller.currentPage.value == index
                        ? Colors.black
                        : Colors.grey,
                  ),
                ),
              ),
            );
          }),
        );
      }),
    );
  }
}

