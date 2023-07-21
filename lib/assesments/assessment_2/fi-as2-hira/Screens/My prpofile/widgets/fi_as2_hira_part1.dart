import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_colors.dart';

class H1Part1 extends StatelessWidget {
  const H1Part1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: ClipRRect(
              child: Image.asset(
                'assets/girl1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Kathrine Mils',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          '@kathrine_mils',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Constants.fontgrey),
        ),
      ],
    );
  }
}
