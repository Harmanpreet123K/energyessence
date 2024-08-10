import 'package:flutter/material.dart';
import 'package:jasmeen/common_widgets/blog_post.dart';

class JBlogColumn extends StatelessWidget {
  const JBlogColumn({super.key});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01), // 5% of screen width for padding
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          JBlogPost(
                  title: '1.Include a Variety of Foods', 
                  image: 'assets/images/health.jpg',
                  desc: 'A balanced diet features a wide range of foods from all food groups. This\nvariety ensures you receive essential nutrients, vitamins, and minerals.\nAim to include a mix of vegetables, fruits, grains, proteins, and dairy or\ndairy alternatives in your daily meals.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '2.Reduce Salt Intake', 
                  image: 'assets/images/health.jpg',
                  desc: 'High sodium levels can lead to health risks like high blood pressure. To\nreduce salt intake, choose fresh or minimally processed foods, cook at\nhome with herbs and spices for flavor, and avoid heavily salted snacks\nand processed meats.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '3.Eat Plenty of Fruits and Vegetables', 
                  image: 'assets/images/health.jpg',
                  desc: 'High sodium levels can lead to health risks like high blood pressure. To\nreduce salt intake, choose fresh or minimally processed foods, cook at\nhome with herbs and spices for flavor, and avoid heavily salted snacks\nand processed meats.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '4.Choose Whole Grains', 
                  image: 'assets/images/health.jpg',
                  desc: 'Whole grains retain more nutrients and fiber than refined grains. Opt for\nwhole grain bread, pasta, rice, and cereals. These foods help maintain\nsteady energy levels and support digestive health.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '5.Include Lean Protein Sources', 
                  image: 'assets/images/health.jpg',
                  desc: 'Choose lean protein sources like poultry, fish, beans, lentils, tofu, and low-\nfat dairy products. These are important for building and repairing tissues\nin the body.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '6.Limit added sugars', 
                  image: 'assets/images/health.jpg',
                  desc: 'Try to minimize the intake of foods and beverages that are high in added\nsugars, such as sugary drinks, sweets, and processed foods. Instead,\nsatisfy your sweet tooth with fruits.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '7.Reduce salt intake', 
                  image: 'assets/images/health.jpg',
                  desc: 'High sodium intake is linked to high blood pressure and other health issues.\nChoose fresh foods over processed ones, and use herbs and spices to\nadd flavor to your meals instead of salt.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '8.Stay hydrated', 
                  image: 'assets/images/health.jpg',
                  desc: 'Drink plenty of water throughout the day. Water is essential for\nnumerous bodily functions and helps maintain overall health.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '9.Be mindful of fats', 
                  image: 'assets/images/health.jpg',
                  desc: 'Choose healthy fats like those found in nuts, seeds, avocados, and olive oil.\nLimit saturated and trans fats found in fried foods, processed snacks, and\nfatty meats.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '10.Moderation is key', 
                  image: 'assets/images/health.jpg',
                  desc: "Enjoy your favorite foods in moderation. It's okay to indulge occasionally,\nbut make sure most of your choices align with a balanced diet."
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '11.Plan ahead', 
                  image: 'assets/images/health.jpg',
                  desc: 'Plan your meals and snacks in advance to ensure you have nutritious\noptions readily available. This can help prevent impulsive unhealthy\nchoices.'
                  ),
                SizedBox(height: 40,),
                JBlogPost(
                  title: '12.Listen to your body', 
                  image: 'assets/images/health.jpg',
                  desc: "Pay attention to your body's hunger and fullness cues. Eat when you're\nhungry and stop when you're satisfied."
                  ),
        ],
      ),
    );
  }
}