import 'package:flutter/material.dart';
import 'package:flutter_interns/sessions/session_2/screens/dashboard/s2_dashboard.dart';
import 'assesments/assessment_2/fi_a2_bilal0x01/screens/login/login_screen_bilal0x01.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter"),
      home: const LoginScreenBilal0x01(),
    );
  }
}
