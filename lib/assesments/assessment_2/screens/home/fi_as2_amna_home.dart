import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'widget/_fi_as2_amna_card.dart';

class F1As2AmnaHome extends StatelessWidget {
  const F1As2AmnaHome({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallSpace = const SizedBox(
      height: 40.0,
    );
    Widget smallWidth = const SizedBox(
      width: 32.0,
    );
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          right: 25.0,
          left: 25.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/svgs/menu.svg"),
                SvgPicture.asset("assets/svgs/notification.svg"),
              ],
            ),
            smallSpace,
            Row(
              children: [
                Image.asset("assets/girl1.png"),
                smallWidth,
                Image.asset("assets/man1.png"),
                smallWidth,
                Image.asset("assets/girl2.png"),
                smallWidth,
                Image.asset("assets/man2.png"),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const _F1As2AmnaCard(),
          ],
        ),
      )),
    );
  }
}
