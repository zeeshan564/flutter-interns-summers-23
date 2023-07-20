import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_add_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_chat_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_notification_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_profile_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_search_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/utils/constants.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/widgets/design/fi_a2_zeeshan_profile_container.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'widgets/_fi_a2_zeeshan_post_card.dart';

class FIA2ZeeshanHomeScreen extends StatelessWidget {
  const FIA2ZeeshanHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    final List<String> bottomNavBarIcons = [
      'home',
      'Search',
      'add',
      'notification_2',
      'Profile'
    ];

    final List<String> peopleImage = [
      'girl1.png',
      'man1.png',
      'girl2.png',
      'man1.png'
    ];

    IconButton svgIconButton(
        {required String icon, required VoidCallback onPressed}) {
      return IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset('$svgIcons/$icon.svg',
            height: screen.height * 0.035, width: screen.height * 0.035),
      );
    }

    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screen.width * 0.02, vertical: screen.height * 0.02),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  svgIconButton(icon: 'menu', onPressed: () {}),
                  svgIconButton(
                      icon: 'notification',
                      onPressed: () => _navigateToNextScreen(
                          context, const FIA2ZeeshanChatScreen())),
                ],
              ),
            ),
            SizedBox(height: screen.height * 0.02),
            Expanded(
              flex: 14,
              child: Column(
                children: [
                  SizedBox(
                    height: screen.height * 0.105,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: peopleImage
                            .asMap()
                            .entries
                            .map((image) => FIA2ZeeshanProfileContainer(
                                image: image.value,
                                isBorderEnable: peopleImage.first == image.value
                                    ? false
                                    : true,
                                height: screen.height * 0.105))
                            .toList()),
                  ),
                  SizedBox(height: screen.height * 0.02),
                  const _FIA2ZeeshanPostCard()
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Card(
                  color: Colors.transparent,
                  shadowColor: Colors.transparent,
                  elevation: 2,
                  child: Container(
                    height: screen.height * 0.1,
                    decoration: BoxDecoration(
                        color: color2,
                        borderRadius:
                            BorderRadius.circular(screen.height * 0.025)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: bottomNavBarIcons
                            .asMap()
                            .entries
                            .map((navIcon) => svgIconButton(
                                icon: navIcon.value,
                                onPressed: () {
                                  if (navIcon.value == 'Search') {
                                    _navigateToNextScreen(context,
                                        const FIA2ZeeshanSearchScreen());
                                  } else if (navIcon.value == 'add') {
                                    _navigateToNextScreen(
                                        context, const FIA2ZeeshanAddScreen());
                                  } else if (navIcon.value ==
                                      'notification_2') {
                                    _navigateToNextScreen(context,
                                        const FIA2ZeeshanNotificationScreen());
                                  } else if (navIcon.value == 'Profile') {
                                    _navigateToNextScreen(context,
                                        const FIA2ZeeshanProfileScreen());
                                  } else {}
                                }))
                            .toList()),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  void _navigateToNextScreen(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
