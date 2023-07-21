import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Colors/fi_ass_rohan_colors.dart';

class FiAssRohanAvator extends StatelessWidget {
  final Widget child;
  const FiAssRohanAvator({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: MyColors.pink, borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(2),
            child: child,
          ),
        ),
      ),
    );
    ;
  }
}
