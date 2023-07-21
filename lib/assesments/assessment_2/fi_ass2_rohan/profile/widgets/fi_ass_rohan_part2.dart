import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Colors/fi_ass_rohan_colors.dart';

class FiAssRohanPart2 extends StatelessWidget {
  final String t1;
  final String t2;
  const FiAssRohanPart2({super.key, required this.t1, required this.t2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              t1,
              style: const TextStyle(fontSize: 14, color: Color(0xff706C6C)),
            ),
            Text(
              t2,
              style: const TextStyle(
                  fontSize: 18,
                  color: MyColors.black,
                  fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    );
  }
}
