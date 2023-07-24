import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/Home/fi_as2_hira_home.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/my_profile/fi_as2_hira_profile.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/notification/fi_as2_hira_notification.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_colors.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/screens/addbox/fi_as2_hira_addbox.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/screens/search/fi_as2_hira_search.dart';

class H1HomeRoot extends StatefulWidget {
  const H1HomeRoot({super.key});

  @override
  State<H1HomeRoot> createState() => _H1HomeRootState();
}

class _H1HomeRootState extends State<H1HomeRoot> {
  final List<Widget> screens = const [
    H1Home(),
    H1Search(),
    H1Addbox(),
    H1Profile(),
    H1Notification(),
  ];
  final List<IconData> bottomNavItems = [
    Icons.home,
    Icons.search,
    Icons.add_box,
    Icons.person,
    Icons.notifications,
  ];
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedTab],
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 75,
        width: 350,
        decoration: BoxDecoration(
          color: Constants.darkgrey,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: bottomNavItems
              .asMap()
              .entries
              .map(
                (e) => IconButton(
                  onPressed: () {
                    setState(
                      () {
                        selectedTab = e.key;
                      },
                    );
                  },
                  icon: Icon(
                    e.value,
                    size: 34,
                    color:
                        e.key == selectedTab ? Constants.pink : Constants.grey,
                  ),
                ),
              )
              .toList(),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
