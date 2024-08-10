import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jasmeen/pages/health/blog.dart';
import 'package:jasmeen/common_widgets/post.dart';

class HealthPageContent extends StatelessWidget {
  const HealthPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final double horizontalPadding = screenWidth < 600 ? 20.0 : 90.0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: LayoutBuilder(
        builder: (context, constraints) {
        final int crossAxisCount = screenWidth > 600 ? 3 : 1;
        final double childAspectRatio = screenWidth > 600 ? 1 : 5;
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,//screenWidth > 600 ? 3 : 1, // Number of columns
          crossAxisSpacing: 15,
          mainAxisSpacing:  screenWidth > 600 ? 25 : 10,
          childAspectRatio: childAspectRatio,//screenWidth > 600 ? 1 : 3,
              //1, // Adjust the aspect ratio to suit your images
          ),
          itemCount: 6, // Number of items in the grid
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          // children: [
          //   InkWell(
          //     onTap:() => Get.to(() => const HealthBlogPage()),
          //     child: const JPost(
          //       image: 'assets/images/health.jpg',
          //       title: 'Tips For Staying Hydrated\nThroughout The Day',
          //     ),
          //   ),
          //   InkWell(
          //     onTap:() => Get.to(() => const HealthBlogPage()),
          //     child: const JPost(
          //       image: 'assets/images/health.jpg',
          //       title: 'Tips For Balanced Diet',
          //     ),
          //   ),
          //   InkWell(
          //     onTap:() => Get.to(() => const HealthBlogPage()),
          //     child: const JPost(
          //       image: 'assets/images/health.jpg',
          //       title: '5 Superfoods For Eye Health',
          //     ),
          //   ),
          //   InkWell(
          //     onTap:() => Get.to(() => const HealthBlogPage()),
          //     child: const JPost(
          //       image: 'assets/images/health.jpg',
          //       title: '5 Superfood To Support Hair\nHealth',
          //     ),
          //   ),
          //   InkWell(
          //     onTap:() => Get.to(() => const HealthBlogPage()),
          //     child: const JPost(
          //       image: 'assets/images/health.jpg',
          //       title: 'Top 6 Vegan Protein Sources',
          //     ),
          //   ),
          //   InkWell(
          //     onTap:() => Get.to(() => const HealthBlogPage()),
          //     child: const JPost(
          //       image: 'assets/images/health.jpg',
          //       title: 'Why Sleep Is Crucial for\nMaintning Overall Health?',
          //     ),
          //   ),
             
          // ],
          itemBuilder: (context, index) {
            // Define titles and images here
            final titles = [
              'Tips For Staying Hydrated\nThroughout The Day',
              'Tips For Balanced Diet',
              '5 Superfoods For Eye Health',
              '5 Superfood To Support Hair\nHealth',
              'Top 6 Vegan Protein Sources',
              'Why Sleep Is Crucial for\nMaintaining Overall Health?',
            ];
            final images = [
              'assets/images/health.jpg',
              'assets/images/health.jpg',
              'assets/images/health.jpg',
              'assets/images/health.jpg',
              'assets/images/health.jpg',
              'assets/images/health.jpg',
            ];
      
            return InkWell(
              onTap: () => Get.to(() => const HealthBlogPage()),
              child: JPost(
                image: images[index],
                title: titles[index],
              ),
            );
          },
        );
        },
            )
    );
  }
}

