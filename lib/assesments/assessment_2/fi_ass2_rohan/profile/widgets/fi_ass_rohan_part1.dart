import 'package:flutter/material.dart';

import '../../Widgets/SizedBox/fi_ass2_rohan_size.dart';

class FiAssRohanPart1 extends StatelessWidget {
  const FiAssRohanPart1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/girl1.png'),
            radius: 50,
          ),
          rohanSmallSizedBox2,
          const Text(
            "Kathrine Mils",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          rohanSmallSizedBox1,
          const Text(
            "@kathrine_mils",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
