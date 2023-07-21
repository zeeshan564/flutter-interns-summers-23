import 'package:flutter/material.dart';

class H1Button extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final Widget child;
  const H1Button(
      {super.key,
      required this.child,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: 350,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: const Color(0xFF9e9898)),
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
