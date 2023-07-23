import 'package:flutter/material.dart';

class H1Addbox extends StatelessWidget {
  const H1Addbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: const Center(
        child: Text(
          'Hi Go back!\n AddBox ',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
