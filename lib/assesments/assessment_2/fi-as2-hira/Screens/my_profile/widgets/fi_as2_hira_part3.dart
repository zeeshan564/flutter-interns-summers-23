import 'package:flutter/material.dart';

class H1Part3 extends StatelessWidget {
  const H1Part3({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallspace = const SizedBox(
      height: 16,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 275,
          width: 195,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset('assets/fi-as2-hira-assets/pic1.png'),
        ),
        Column(
          children: [
            Container(
              height: 80,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/fi-as2-hira-assets/pic2.png'),
            ),
            smallspace,
            Container(
              height: 80,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/fi-as2-hira-assets/pic3.png'),
            ),
            smallspace,
            Container(
              height: 80,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/fi-as2-hira-assets/pic4.png'),
            ),
          ],
        ),
      ],
    );
  }
}
