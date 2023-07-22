import 'package:flutter/material.dart';

class H1Search extends StatelessWidget {
  const H1Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
          child: Text(
        'Hi Go back!\n Search',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}