import 'package:flutter/material.dart';
import 'dart:js' as js;

class JPintrest extends StatelessWidget {
  const JPintrest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate container size and padding based on screen size
    double containerSize = screenWidth * 0.07;
    double padding = screenWidth * 0.05;
    double borderThickness = screenWidth * 0.005;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Container(
        height: containerSize,//60,
        width: containerSize,//60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(containerSize/2/*30*/),
          border: Border.all(width: borderThickness,//2, 
          color: Colors.black),
        ),
        child: Padding(
          padding: EdgeInsets.all(containerSize*0.1/*6.0*/),
          child: InkWell(
            hoverColor: Colors.white,
      onTap: () {
        js.context.callMethod("open",['https://in.pinterest.com/01EnergyEssence/']);
      },
            child: Image.asset('assets/images/pintrest-logo.png')),
        ),
      ),
    );
  }
}