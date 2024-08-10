import 'package:flutter/material.dart';
import 'package:jasmeen/common_widgets/blog_appbar.dart';
import 'package:jasmeen/common_widgets/blog_title.dart';
import 'package:jasmeen/common_widgets/common_bottom.dart';
import 'package:jasmeen/pages/shop/widgets/shop_content.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:JBLogAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            JBlogTitle(title: '"Elevate Your Energy, Elevate Your Life!"',text: "Discover top-rated products that enhance your lifestyle! Our\ncurated selections offer quality and value, ensuring you find\nthe best solutions. Shop through our links and experience\nthe benefits today!",),
            SizedBox(
                height: 60,
              ),
            ShopPageContent(),
            SizedBox(
              height: 60,
            ),
            JBottom()
          ],
        ),
      ),
    );
  }
}