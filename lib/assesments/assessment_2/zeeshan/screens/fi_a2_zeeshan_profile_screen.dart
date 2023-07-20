import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_more_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/screens/fi_a2_zeeshan_setting_screen.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/utils/constants.dart';
import 'package:flutter_interns/assesments/assessment_2/zeeshan/widgets/design/fi_a2_zeeshan_profile_container.dart';

class FIA2ZeeshanProfileScreen extends StatefulWidget {
  const FIA2ZeeshanProfileScreen({super.key});

  @override
  State<FIA2ZeeshanProfileScreen> createState() =>
      _FIA2ZeeshanProfileScreenState();
}

class _FIA2ZeeshanProfileScreenState extends State<FIA2ZeeshanProfileScreen> {
  @override
  void initState() {
    selectedTab = {'Photos': photoTab(context)};
    super.initState();
  }

  Widget photoTab(BuildContext context) => Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/fi-a2-zeeshan-photo1.png'),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 2; i < 5; i++)
                Container(
                  height: 95,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/fi-a2-zeeshan-photo$i.png'),
                          fit: BoxFit.cover)),
                ),
            ],
          )
        ],
      ));

  Widget videoTab(BuildContext context) => Container(
      alignment: Alignment.center,
      child: Text(
        'Video Tab',
        style: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: const Color.fromRGBO(112, 108, 108, 0.5),
        ),
      ));

  Widget taggedTab(BuildContext context) => Container(
      alignment: Alignment.center,
      child: Text(
        'Tagged Tab',
        style: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: const Color.fromRGBO(112, 108, 108, 0.5),
        ),
      ));

  Map<String, Widget>? selectedTab;

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    Map<String, String> stats = {
      'Photos': '315',
      'Followers': '77.5k',
      'Follows': '500'
    };

    Map<String, Widget> tabBarItems = {
      'Photos': photoTab(context),
      'Videos': videoTab(context),
      'Tagged': taggedTab(context),
      'More': const SizedBox(),
    };

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back, size: 30)),
                      Text('My Profile',
                          style: TextStyle(
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w700,
                              fontSize: screen.height * 0.025)),
                      IconButton(
                          onPressed: () => _navigateToNextScreen(
                              context, const FIA2ZeeshanSettingScreen()),
                          icon: const Icon(Icons.settings, size: 30))
                    ])),
            Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FIA2ZeeshanProfileContainer(
                        image: 'girl1.png', height: screen.height * 0.15),
                    SizedBox(height: screen.height * 0.02),
                    Text('Kathrine Mils',
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: screen.height * 0.025)),
                    SizedBox(height: screen.height * 0.005),
                    Text('@kathrine_mils',
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: screen.height * 0.016,
                            color: const Color.fromRGBO(112, 108, 108, 1))),
                    SizedBox(height: screen.height * 0.04),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screen.width * 0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: stats.entries
                            .map((element) => Column(
                                  children: [
                                    Text(
                                      element.key,
                                      style: TextStyle(
                                        fontFamily: fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: screen.height * 0.016,
                                        color: const Color.fromRGBO(
                                            112, 108, 108, 1),
                                      ),
                                    ),
                                    Text(
                                      element.value,
                                      style: TextStyle(
                                        fontFamily: fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: screen.height * 0.020,
                                      ),
                                    ),
                                  ],
                                ))
                            .toList(),
                      ),
                    )
                  ],
                )),
            Expanded(
                flex: 7,
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: tabBarItems.entries.map((tab) {
                          if (tab.key == 'More') {
                            return GestureDetector(
                              onTap: () => _navigateToNextScreen(
                                  context, const FIA2ZeeshanMoreScreen()),
                              child: const Icon(Icons.more_horiz,
                                  size: 35,
                                  color: Color.fromRGBO(112, 108, 108, 1)),
                            );
                          }
                          if (selectedTab!.entries.first.key == tab.key) {
                            return Container(
                              height: screen.height * 0.05,
                              width: screen.width * 0.30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: color2,
                                  borderRadius: BorderRadius.circular(
                                      screen.height * 0.025)),
                              child: Text(
                                tab.key,
                                style: TextStyle(
                                    fontFamily: fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screen.height * 0.018,
                                    color:
                                        const Color.fromRGBO(239, 239, 239, 1)),
                              ),
                            );
                          } else {
                            return GestureDetector(
                                onTap: () => setState(() {
                                      selectedTab = {tab.key: tab.value};
                                    }),
                                child: Text(tab.key,
                                    style: TextStyle(
                                        fontFamily: fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: screen.height * 0.018,
                                        color: const Color.fromRGBO(
                                            112, 108, 108, 1))));
                          }
                        }).toList()),
                    SizedBox(height: screen.height * 0.01),
                    Expanded(
                        child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screen.width * 0.04),
                      child: selectedTab!.entries.first.value,
                    ))
                  ],
                )),
          ],
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
