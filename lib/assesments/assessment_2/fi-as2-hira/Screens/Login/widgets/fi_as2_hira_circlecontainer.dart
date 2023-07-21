import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_colors.dart';

class H1Circle extends StatelessWidget {
  final Widget child;
  const H1Circle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Constants.grey, borderRadius: BorderRadius.circular(50)),
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
  }
}
