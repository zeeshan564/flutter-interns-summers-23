import 'package:flutter/material.dart';

import '../../../constants/fi_as2_hira_colors.dart';

class H1Text extends StatelessWidget {
  final String text1;
  final String text2;
  const H1Text({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Constants.fontgrey),
        ),
        Text(
          text2,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Constants.black),
        )
      ],
    );
  }
}
