import 'package:flutter/material.dart';

class H1Notification extends StatelessWidget {
  const H1Notification({super.key});

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
          'Hi Go back!\n Notification',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
