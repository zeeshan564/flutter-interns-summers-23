import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/screens/f1_as2_amna_add.dart';
import 'package:flutter_interns/assesments/assessment_2/screens/f1_as2_amna_notification.dart';
import 'package:flutter_interns/assesments/assessment_2/screens/f1_as2_amna_search.dart';
import 'package:flutter_interns/assesments/assessment_2/screens/home/fi_as2_amna_home.dart';
import 'package:flutter_interns/assesments/assessment_2/screens/profile/f1_as2_amna_profile.dart';
import 'package:flutter_svg/svg.dart';
import 'constants/f1_as2_amna_colors.dart';

class F1As2AmnaDashboard extends StatefulWidget {
  const F1As2AmnaDashboard({super.key});

  @override
  State<F1As2AmnaDashboard> createState() => _F1As2AmnaDashboardState();
}

class _F1As2AmnaDashboardState extends State<F1As2AmnaDashboard> {
  List<Widget> views = [
    // home
    const F1As2AmnaHome(),
    const F1As2AmnaSearch(),
    const F1As2AmnaAdd(),
    const F1As2AmnaProfile(),
    const F1As2AmnaNotification(), // 0
  ];
  Widget smallWidth = const SizedBox(
    width: 32.0,
  );
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      'assets/svgs/home.svg',
      'assets/svgs/Search.svg',
      'assets/svgs/add.svg',
      'assets/svgs/Profile.svg',
      'assets/svgs/notification_2.svg'
    ];
    return Scaffold(
      body: SafeArea(
        child: views[currentIndex],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 40, right: 20, left: 20),
        height: 65.0,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: const Color(0xFF535357),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: generateIconsWithSeparator(icons, smallWidth),
          ),
        ),
      ),
    );
  }

  List<Widget> generateIconsWithSeparator(
      List<String> icons, Widget separator) {
    List<Widget> iconWidgets = icons
        .asMap()
        .entries
        .map((entry) => GestureDetector(
              onTap: () => setState(() {
                currentIndex = entry.key;
              }),
              child: SvgPicture.asset(
                entry.value,
                // ignore: deprecated_member_use
                color: currentIndex == entry.key
                    ? F1As2AmnaConstants.primaryColor
                    : const Color(0xFF9E9898),
              ),
            ))
        .toList();
    List<Widget> widgetsWithSeparator =
        iconWidgets.expand((widget) => [widget, separator]).toList();
    widgetsWithSeparator.removeLast(); // Remove the last separator at the end
    return widgetsWithSeparator;
  }
}
