import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/rohan_utils/fi_a2_rohan_images.dart';

import '../../rohan_utils/fi_a2_rohan_sizebox.dart';

class FiA2RohanProfileSection1 extends StatelessWidget {
  const FiA2RohanProfileSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(FiA2RohanImages.girl1),
            radius: 50,
          ),
          rohanSmallSizedBox2,
          Text(
            "Kathrine Mils",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          rohanSmallSizedBox1,
          Text(
            "@kathrine_mils",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
