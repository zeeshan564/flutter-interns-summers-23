import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Colors/fi_ass_rohan_colors.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/profile/widgets/fi_ass_rohan.part3.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/profile/widgets/fi_ass_rohan_part1.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/profile/widgets/fi_ass_rohan_part2.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/profile/widgets/fi_ass_rohan_part4.dart';

import '../Widgets/SizedBox/fi_ass2_rohan_size.dart';

class FiAssRohanProfile extends StatelessWidget {
  const FiAssRohanProfile({super.key});

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
                  color: MyColors.black,
                )),
            title: const Text(
              "My Profile",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: MyColors.black),
            ),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.settings,
                  color: MyColors.black,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              const FiAssRohanPart1(),
              rohanSmallSizedBox3,
              rohanSmallSizedBox3,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FiAssRohanPart2(
                    t1: 'Photos',
                    t2: '315',
                  ),
                  FiAssRohanPart2(
                    t1: 'Followers',
                    t2: '77.5k',
                  ),
                  FiAssRohanPart2(
                    t1: 'Follows',
                    t2: '500',
                  ),
                ],
              ),
              rohanSmallSizedBox3,
              rohanSmallSizedBox3,
              rohanSmallSizedBox2,
              const FiAssRohanPart3(),
              const FiAssRohanPart4(
                  path: "assets/fi_ass2_rohan_assets/sun.png",
                  path1: "assets/fi_ass2_rohan_assets/fun.png",
                  path2: "assets/fi_ass2_rohan_assets/tree.png",
                  path3: "assets/fi_ass2_rohan_assets/rock.png"),
            ],
          )),
    );
  }
}
