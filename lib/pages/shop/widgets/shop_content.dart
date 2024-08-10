import 'package:flutter/material.dart';
import 'package:jasmeen/pages/shop/widgets/shop_post.dart';

class ShopPageContent extends StatelessWidget {
  const ShopPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double horizontalPadding = screenWidth < 600 ? 10.0 : 90.0;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: SizedBox(
        width:screenWidth < 600 ? screenWidth * 0.55 : screenWidth * 0.9, //1200,
        //height: 1200,
        child: GridView.count(
          crossAxisCount: screenWidth > 600 ? 3 : 2, // Number of columns
          crossAxisSpacing: screenWidth > 600 ? 20 : 25,
          mainAxisSpacing: screenWidth > 600 ? 25 : 35,
          childAspectRatio: screenWidth > 600 ? 1 : 0.5,
              //1, // Adjust the aspect ratio to suit your images
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
          children: [
            InkWell(
              onTap:() {},
              child: const ShopPost(
                image: 'assets/images/keto_air_fryer.png',
                title: 'Balance lifestyle',
              ),
            ),
            InkWell(
              onTap:() {},
              child: const ShopPost(
                image: 'assets/images/keto_air_fryer.png',
                title: 'Magic word power',
              ),
            ),
            InkWell(
              onTap:() {},
              child: const ShopPost(
                image: 'assets/images/keto_air_fryer.png',
                title: 'The sleep reset',
              ),
            ),
            InkWell(
              onTap:() {},
              child: const ShopPost(
                image: 'assets/images/keto_air_fryer.png',
                title: 'Midas Manifestation',
              ),
            ),
            InkWell(
              onTap:() {},
              child: const ShopPost(
                image: 'assets/images/keto_air_fryer.png',
                title: 'Money Manifestation',
              ),
            ),
            InkWell(
              onTap:() {},
              child: const ShopPost(
                image: 'assets/images/keto_air_fryer.png',
                title: 'Keto Air Fryer recipes',
              ),
            ),
            InkWell(
              onTap:() {},
              child: const ShopPost(
                image: 'assets/images/keto_air_fryer.png',
                title: 'Superior Brain health',
              ),
            ),
            InkWell(
              onTap:() {},
              child: const ShopPost(
                image: 'assets/images/keto_air_fryer.png',
                title: 'Power of visualisation',
              ),
            ),
            InkWell(
              onTap:() {},
              child: const ShopPost(
                image: 'assets/images/keto_air_fryer.png',
                title: 'Thankful affirmation',
              ),
            ),
             
          ],
        ),
      ),
    );
  }
}

