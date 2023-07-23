import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/rohan_profile/profile_widget/fi_a2_rohan.section3.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/rohan_profile/profile_widget/fi_a2_rohan_section1.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/rohan_profile/profile_widget/fi_a2_rohan_section2.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/rohan_profile/profile_widget/fi_a2_rohan_section4.dart';

import '../rohan_utils/fi_a2_rohan_colors.dart';
import '../rohan_utils/fi_a2_rohan_images.dart';
import '../rohan_utils/fi_a2_rohan_sizebox.dart';

class FiA2RohanProfile extends StatelessWidget {
  const FiA2RohanProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: FiA2RohanColors.black,
            ),
          ),
          title: const Text(
            "My Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: FiA2RohanColors.black),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.settings,
                color: FiA2RohanColors.black,
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            FiA2RohanProfileSection1(),
            rohanSmallSizedBox3,
            rohanSmallSizedBox3,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FiA2RohanProfileSection2(
                  text1: 'Photos',
                  text2: '315',
                ),
                FiA2RohanProfileSection2(
                  text1: 'Followers',
                  text2: '77.5k',
                ),
                FiA2RohanProfileSection2(
                  text1: 'Follows',
                  text2: '500',
                ),
              ],
            ),
            rohanSmallSizedBox3,
            rohanSmallSizedBox3,
            rohanSmallSizedBox2,
            FiA2RohanProfileSection3(),
            FiA2RohanProfileSection4(
                path: FiA2RohanImages.sun,
                path1: FiA2RohanImages.fun,
                path2: FiA2RohanImages.tree,
                path3: FiA2RohanImages.rock),
          ],
        ),
      ),
    );
  }
}
