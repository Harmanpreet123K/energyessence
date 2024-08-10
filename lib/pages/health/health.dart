import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jasmeen/controller/page_controller.dart';
import 'package:jasmeen/pages/health/health_content.dart';
import 'package:jasmeen/common_widgets/appbar.dart';
import 'package:jasmeen/common_widgets/common_bottom.dart';
import 'package:jasmeen/common_widgets/headbar.dart';

import '../../common_widgets/bottom_numbers.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;  
    final double gridHeight = screenWidth < 600 ? screenHeight * 1 :screenHeight * 1.3 ;

    final PageControllerGetX controller = Get.put(PageControllerGetX());
    return Scaffold(
     appBar: const JAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const JHeadBar(),
            const SizedBox(
              height: 60,
            ),
            const Center(child: Text('HEALTH',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
            const SizedBox(
              height: 60,
            ),

            SizedBox(
              height: gridHeight,//800,
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                children: const [
                  HealthPageContent(),
                  HealthPageContent(),
                  HealthPageContent(),
                ],
              ),
            ),
            const JBottomNumbers(),

            const SizedBox(
              height: 50,
            ),
            const JBottom()
          ],
        ),
      ),
    );
  }
}

