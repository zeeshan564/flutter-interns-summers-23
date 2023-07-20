import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/utils/constants.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/widgets/core/fi_a2_zeeshan_button.dart';

import 'fi_a2_zeeshan_home_screen/fi_a2_zeeshan_home_screen.dart';

class FIA2ZeeshanLoginScreen extends StatelessWidget {
  const FIA2ZeeshanLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screen.width * 0.02, vertical: screen.height * 0.02),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child:
                    Image.asset('assets/fi-a2-zeeshan-login-screen-logo.png'),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(
                      child: Text('Let’s Connect\nTogether',
                          style: TextStyle(
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: screen.height * 0.036),
                          textAlign: TextAlign.center),
                    ),
                    SizedBox(height: screen.height * 0.04),
                    FIA2ZeeshanButton(
                      onPressed: () => _navigateToNextScreen(context),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: screen.height * 0.020),
                      ),
                    ),
                    SizedBox(height: screen.height * 0.02),
                    FIA2ZeeshanButton(
                      onPressed: () => _navigateToNextScreen(context),
                      backgroundColor: primaryColor,
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: screen.height * 0.020,
                            color: secondaryColor),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const FIA2ZeeshanHomeScreen()));
  }
}
