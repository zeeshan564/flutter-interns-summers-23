import 'package:flutter/material.dart';

class Fia2rohanLogin extends StatelessWidget {
  const Fia2rohanLogin({super.key});
  @override
  Widget build(BuildContext context) {
    Widget smallSpace = const SizedBox(
      height: 30.0,
    );
    Widget BtnContainer = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 270,
        height: 50,
        child: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
              color: Color(0xff9E9898),
            )),
      ),
    );
    Widget BtnContainer1 = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 270,
        height: 50,
        child: Text(
          "Sign up",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        decoration: BoxDecoration(
            color: Color(0xffFA9884),
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
              color: Color(0xff9E9898),
            )),
      ),
    );
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Image.asset(
              "assets/fi_ass2_rohan_assets/fi_login.png",
              width: 300,
            ),
          ),
        ),
        const Text(
          "Let's Connect\n    Together",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 36,
          ),
        ),
        smallSpace,
        BtnContainer,
        BtnContainer1,
      ],
    ));
  }
}
