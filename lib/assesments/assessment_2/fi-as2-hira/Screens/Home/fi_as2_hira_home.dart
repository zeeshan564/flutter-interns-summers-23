import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/Home/widgets/fi_as2_hira_bottom.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/Home/widgets/fi_as2_hira_card.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/Home/widgets/fi_as2_hira_stack_avatar.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/Home/widgets/fi_as2_hira_avatar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class H1Home extends StatelessWidget {
  const H1Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallspace = const SizedBox(
      height: 40,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(27.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/svgs/menu.svg'),
                  SvgPicture.asset('assets/svgs/notification.svg'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const H1Stackcircle(),
                H1Avatar(
                  child: Image.asset(
                    'assets/man1.png',
                  ),
                ),
                H1Avatar(
                  child: Image.asset(
                    'assets/girl2.png',
                  ),
                ),
                H1Avatar(
                  child: Image.asset(
                    'assets/man1.png',
                  ),
                ),
              ],
            ),
            smallspace,
            const H1Cardbox(),
            smallspace,
            const H1Bottombar()
          ],
        ),
      ),
    );
  }
}
