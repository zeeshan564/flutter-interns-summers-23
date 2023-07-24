import 'package:flutter/material.dart';
import 'assesments/assessment_2/fi_ass2_rohan/Screens/fi_a2_rohan_login.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Summer Internship \'23',
      home: FiA2RohanLogin(),
    );
  }
}