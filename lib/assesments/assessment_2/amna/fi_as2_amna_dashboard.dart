import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/screens/fi_as2_amna_add.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/screens/fi_as2_amna_notification.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/screens/fi_as2_amna_search.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/screens/home/fi_as2_amna_home.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/screens/profile/fi_as2_amna_profile.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/theme/fi_as2_amna_constants.dart';
import 'package:flutter_svg/svg.dart';

class _FiAs2AmnaDashboard extends StatefulWidget {
  const _FiAs2AmnaDashboard();

  @override
  State<_FiAs2AmnaDashboard> createState() => _F1As2AmnaDashboardState();
}

class _F1As2AmnaDashboardState extends State<_FiAs2AmnaDashboard> {
  final List<Widget> views = [
    // home
    const FiAs2AmnaHome(),
    const FiAs2AmnaSearch(),
    const FiAs2AmnaAdd(),
    const FiAs2AmnaProfile(),
    const FiAs2AmnaNotification(), // 0
  ];

  final List<String> icons = [
    'assets/svgs/home.svg',
    'assets/svgs/Search.svg',
    'assets/svgs/add.svg',
    'assets/svgs/Profile.svg',
    'assets/svgs/notification_2.svg'
  ];
  Widget smallWidth = const SizedBox(
    width: 32.0,
  );
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
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
                color: currentIndex == entry.key
                    ? FiAs2AmnaColors.primaryColor
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
