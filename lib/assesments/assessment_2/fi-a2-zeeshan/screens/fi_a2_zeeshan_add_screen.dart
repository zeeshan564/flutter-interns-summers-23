import 'package:flutter/material.dart';
import '../utils/fi_a2_zeeshan_constants.dart';

class FIA2ZeeshanAddScreen extends StatelessWidget {
  const FIA2ZeeshanAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Add Screen',
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
