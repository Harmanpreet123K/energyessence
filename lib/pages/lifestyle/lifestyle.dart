import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jasmeen/pages/lifestyle/lifestyle_content.dart';
import 'package:jasmeen/common_widgets/appbar.dart';
import 'package:jasmeen/common_widgets/bottom_numbers.dart';
import 'package:jasmeen/common_widgets/common_bottom.dart';
import 'package:jasmeen/common_widgets/headbar.dart';

import '../../controller/page_controller.dart';

class LifestylePage extends StatelessWidget {
  const LifestylePage({super.key});

  @override
  Widget build(BuildContext context) {

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
            const Center(child: Text('LIFESTYLE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
            const SizedBox(
              height: 60,
            ),

              SizedBox(
              height: 800,
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                children: const [
                  LifestylePageContent(),
                  LifestylePageContent(),
                  LifestylePageContent(),
                ],
              ),
            ),
           const JBottomNumbers(),

            const SizedBox(
              height: 50,
            ),
            const JBottom(),
          ],
        ),
      ),
    );
  }
}

