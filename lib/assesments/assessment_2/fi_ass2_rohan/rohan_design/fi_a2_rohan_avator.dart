import 'package:flutter/material.dart';
import '../rohan_utils/fi_a2_rohan_colors.dart';

class FiA2RohanAvator extends StatelessWidget {
  final Widget child;
  const FiA2RohanAvator({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: FiA2RohanColors.pink,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(2),
          child: child,
        ),
      ),
    );
  }
}
