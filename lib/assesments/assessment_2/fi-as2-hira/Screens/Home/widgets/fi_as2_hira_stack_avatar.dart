import 'package:flutter/material.dart';

class H1Stackcircle extends StatelessWidget {
  

  const H1Stackcircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(2),
            child: Stack(
              children: [
                Image.asset(
                  'assets/girl1.png',
                ),
                const Center(
                  child: Icon(
                    Icons.add_box,
                    color: Colors.white,
                  ),
                )
              ],
            ),          
          ),
        ),
      ),
    );
  }
}
