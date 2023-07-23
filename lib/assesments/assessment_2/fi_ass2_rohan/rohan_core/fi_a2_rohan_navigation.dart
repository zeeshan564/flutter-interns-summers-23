import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Screens/fi_a2_rohan_home.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Screens/fi_a2_rohan_notification.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Screens/fi_a2_rohan_profile.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Screens/fi_a2_rohan_search.dart';
import '../Screens/fi_a2_rohan_addpost.dart';
import '../rohan_utils/fi_a2_rohan_colors.dart';

class FiA2RohanNavigation extends StatefulWidget {
  const FiA2RohanNavigation({super.key});

  @override
  State<FiA2RohanNavigation> createState() => _FiA2RohanNavigationState();
}

class _FiA2RohanNavigationState extends State<FiA2RohanNavigation> {
  List<Widget> screens = const [
    FiA2RohanHome(),
    FiA2RohanSearch(),
    FiA2RohanPost(),
    FiA2RohanProfile(),
    FiA2RohanNotification(),
  ];
  List<IconData> iconitems = [
    Icons.home,
    Icons.search,
    Icons.add,
    Icons.person,
    Icons.notifications,
  ];
  int tabs = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[tabs],
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        width: 290,
        height: 60,
        decoration: BoxDecoration(
          color: FiA2RohanColors.darkgrey,
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: iconitems
              .asMap()
              .entries
              .map(
                (e) => IconButton(
                  onPressed: () {
                    setState(
                      () {
                        tabs = e.key;
                      },
                    );
                  },
                  icon: Icon(
                    e.value,
                    size: 30,
                    color: e.key == tabs
                        ? FiA2RohanColors.pink
                        : FiA2RohanColors.grey,
                  ),
                ),
              )
              .toList(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
