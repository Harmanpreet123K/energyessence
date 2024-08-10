import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jasmeen/pages/shop/shop.dart';

class JAppBar extends StatelessWidget implements PreferredSizeWidget{
  const JAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     //double screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 10,
      automaticallyImplyLeading: false,
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          "Energy essence",
          style: TextStyle(
              fontSize: 35,//screenWidth * 0.08, // Adjust the font size based on screen width,
              color: Colors.white),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => Get.to(() => const ShopPage()),
          icon: const Icon(Icons.shopping_cart),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: Colors.white,
        ),
      ],
    );
  }

  @override
  // TODO: implements preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
