import 'package:flutter/material.dart';
import '../utils/fi_a2_zeeshan_constants.dart';

class FIA2ZeeshanSearchScreen extends StatelessWidget {
  const FIA2ZeeshanSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Search Screen',
            style: TextStyle(
              fontFamily: fontFamily,
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: const Color.fromRGBO(112, 108, 108, 0.5),
            ),
          ),
        ),
      ),
    );
  }
}
