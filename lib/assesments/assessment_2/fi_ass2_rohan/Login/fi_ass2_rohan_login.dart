import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Colors/fi_ass_rohan_colors.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/core/fi_ass2_rohan_btn.dart';
import '../Home/fi_ass2_rohan_home.dart';
import '../SizedBox copy/fi_ass2_rohan_size.dart';

class FiA2RohanLogin extends StatelessWidget {
  const FiA2RohanLogin({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        rohanSmallSizedBox4,
        rohanSmallSizedBox4,
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Image.asset(
              "assets/fi_ass2_rohan_assets/fi_login.png",
              width: 300,
            ),
          ),
        ),
        const Text(
          "Let's Connect\n    Together",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 36,
          ),
        ),
        rohanSmallSizedBox2,
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: FiAssRohanButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FiAssRohanHome()),
              );
            },
            color: Colors.transparent,
            child: const Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        rohanSmallSizedBox2,
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: FiAssRohanButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FiAssRohanHome()),
              );
            },
            color: MyColors.pink,
            child: const Text(
              "Sign up",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ],
    ));
  }
}
