import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/f1_as2_amna_colors.dart';
part 'widget/_fi_as2_amna_button.dart';

class F1As2AmnaLoginScreen extends StatelessWidget {
  const F1As2AmnaLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallSpace = const SizedBox(
      height: 40.0,
    );
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          smallSpace,
          Center(
            child: SvgPicture.asset("assets/amna/Login screen logo.svg"),
          ),
          smallSpace,
          const Center(
            child: Text(
              "Let’s Connect Together",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
          ),
          Column(children: [
            smallSpace,
            const _Button(
              i: 0,
              value: "Login",
            ),
            smallSpace,
            const _Button(
              i: 1,
              value: "Signup",
            )
          ])
        ]),
      )),
    );
  }
}
