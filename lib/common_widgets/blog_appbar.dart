import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/health/health.dart';
import '../pages/lifestyle/lifestyle.dart';
import '../pages/personal_growth/personal_growth.dart';
import '../pages/spirituality/spirituality.dart';

class JBLogAppBar extends StatelessWidget implements PreferredSizeWidget{
  const JBLogAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
       backgroundColor: Colors.black,
       elevation: 10,
       automaticallyImplyLeading: false,
       //titleSpacing: 0,
       // leading: CircleAvatar(
       //   backgroundImage: AssetImage('assets/images/jaslogo.jpeg'),
       // ),
       // leadingWidth: 40,
       title: const Text(
         "Energy essence",
         style: TextStyle(
             fontSize: 35,
             color: Colors.white),
       ),
       actions: [
         TextButton(
                     onPressed: () => Get.to(() => const HealthPage()),
                     child: const Text(
                       'Health',
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 22),
                     )),
                 TextButton(
                     onPressed: () => Get.to(() => const LifestylePage()),
                     child: const Text(
                       'Lifestyle',
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 22),
                     )),
                 TextButton(
                     onPressed: () => Get.to(() => const SpiritualityPage()),
                     child: const Text(
                       'Spirituality',
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 22),
                     )),
                 TextButton(
                     onPressed: () => Get.to(() => const PersonalGrowthPage()),
                     child: const Text(
                       'Personal growth',
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 22),
                     )),
                     const SizedBox(width: 10,),
         TextButton(
           onPressed: () {},
           child: const Text('Subscribe',style: TextStyle(color: Colors.white,fontSize: 22),),
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