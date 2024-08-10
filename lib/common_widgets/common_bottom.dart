import 'package:flutter/material.dart';
import 'package:jasmeen/common_widgets/name_tag.dart';
import 'package:jasmeen/common_widgets/pintrest_icon.dart';
import 'package:jasmeen/common_widgets/rights_resrv.dart';
import 'package:jasmeen/common_widgets/weekly_email.dart';

class JBottom extends StatelessWidget {
  const JBottom({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate spacing based on screen height
    double smallSpacing = screenHeight * 0.05;
    double largeSpacing = screenHeight * 0.1;
    return Column(
      children: [
       const JWeeklyEmail(),
             SizedBox(
              height: largeSpacing,//60,
            ),
            const JPintrest(),
             SizedBox(
              height: smallSpacing,//40,
            ),
            const JNameTag(),
             SizedBox(
              height: largeSpacing,//60,
            ),
            const JRightsResrv()
      ]
    );
  }
}