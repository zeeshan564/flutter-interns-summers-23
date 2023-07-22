import 'package:flutter/material.dart';

import '../../theme/theme_colors_bilal0x01.dart';
import '../../theme/theme_spaces_bilal0x01.dart';
import '../../theme/theme_title_bilal0x01.dart';
import '../../utils/assets_bilal0x01.dart';
import '../../widgets/core/main_dashboard_bilal0x01.dart';

part 'widgets/logo_bilal0x01.dart';
part 'widgets/main_button_bilal0x01.dart';

class LoginScreenBilal0x01 extends StatelessWidget {
  const LoginScreenBilal0x01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const _Logo(),
            smallVertSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: bigTitle("Let's Connect Together"),
            ),
            bigVertSpace,
            for (var i = 0; i <= 1; i++)
              _MainButton(
                buttonColor: i == 0 ? Colors.white : ThemeColors.primaryColor,
                clickedAction: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MainDashboard(),
                  ));
                },
                content: smallTitle(
                  i == 0 ? "Login" : "Sign up",
                  textColor: i == 0 ? Colors.black : Colors.white,
                ),
              )
          ],
        ),
      ),
    );
  }
}
