import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/rohan_core/fi_a2_rohan_button.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/rohan_core/fi_a2_rohan_navigation.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/rohan_utils/fi_a2_rohan_images.dart';
import '../rohan_utils/fi_a2_rohan_colors.dart';
import '../rohan_utils/fi_a2_rohan_sizebox.dart';

class FiA2RohanLogin extends StatelessWidget {
  const FiA2RohanLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          rohanSmallSizedBox5,
          rohanSmallSizedBox5,
          rohanSmallSizedBox5,
          Center(
            child: Image.asset(
              FiA2RohanImages.login,
              width: 290,
            ),
          ),
          rohanSmallSizedBox4,
          const Text(
            "Let's Connect\n    Together",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          ),
          rohanSmallSizedBox2,
          rohanSmallSizedBox2,
          FiA2RohanButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FiA2RohanNavigation()),
              );
            },
            color: Colors.transparent,
            child: const Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          rohanSmallSizedBox2,
          FiA2RohanButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FiA2RohanNavigation()),
              );
            },
            color: FiA2RohanColors.pink,
            child: const Text(
              "Sign up",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
