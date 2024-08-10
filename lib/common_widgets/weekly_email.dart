import 'package:flutter/material.dart';

class JWeeklyEmail extends StatelessWidget {
  const JWeeklyEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      bool isSmallScreen = MediaQuery.of(context).size.width < 850;
      final double screenWidth = MediaQuery.of(context).size.width;
      double fontSize = screenWidth * 0.03;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 20.0 : 90.0),
      child: Container(
        width: double.infinity,//1100,
        color:const Color.fromARGB(244, 252, 235, 224),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,40,20,40),
          child: Column(
            children: [
              Text(
                'A weekly email to help you level up your life &\nlove yourself',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: fontSize),
                textAlign: TextAlign.center,
                textWidthBasis: TextWidthBasis.longestLine,
              ),
              //Text('love yourself',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              const SizedBox(
                height: 10,
              ),


                if (isSmallScreen)
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintText: 'Email Address',
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 227, 90, 17),
                          ),
                        ),
                        child: const Text(
                          'Subscribe',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                
              if(!isSmallScreen)
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none)),
                        hintText: 'Email Address',
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    width: 120,
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(6.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 227, 90, 17),
                            )),
                            child: const Text(
                          'Subscribe',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}