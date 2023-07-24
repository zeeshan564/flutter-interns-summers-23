import 'package:flutter/material.dart';

import '../../theme/theme_colors_bilal0x01.dart';
import '../../theme/theme_spaces_bilal0x01.dart';
import '../../theme/theme_title_bilal0x01.dart';
import '../../utils/assets_bilal0x01.dart';
import '../../widgets/core/main_dashboard_bilal0x01.dart';

part 'widgets/main_button_bilal0x01.dart';

class LoginScreenBilal0x01 extends StatelessWidget {
  const LoginScreenBilal0x01({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: "Inter",
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  StaticAssets.logoImg,
                  fit: BoxFit.cover,
                ),
              ),
              smallVertSpace,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                ),
                child: bigTitle(
                  "Let's Connect Together",
                ),
              ),
              bigVertSpace,
              for (var i = 0; i <= 1; i++)
                _MainButtonBilal0x01(
                  buttonColor:
                      i == 0 ? Colors.white : ThemeColorsBilal0x01.primaryColor,
                  clickedAction: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MainDashboardBilal0x01(),
                      ),
                    );
                  },
                  content: smallTitle(
                    i == 0 ? "Login" : "Sign up",
                    textColor: i == 0 ? Colors.black : Colors.white,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
