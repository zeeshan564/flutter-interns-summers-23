import 'package:flutter/material.dart';

import '../../../constants/fi_as2_hira_colors.dart';

class H1Avatar extends StatelessWidget {
  final Widget child;
  const H1Avatar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          color: Constants.pink, borderRadius: BorderRadius.circular(50)),
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
