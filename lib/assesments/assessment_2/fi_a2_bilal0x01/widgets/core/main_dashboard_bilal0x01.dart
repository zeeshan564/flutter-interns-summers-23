import 'package:flutter/material.dart';

import '../../utils/assets_bilal0x01.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../screens/profile/profile_screen_bilal0x01.dart';
import '../../theme/theme_colors_bilal0x01.dart';
import '../../screens/home/home_screen_bilal0x01.dart';
import '../../screens/notifications/notifications_screen_bilal0x01.dart';
import '../../screens/add/add_screen_bilal0x01.dart';
import '../../screens/search/search_screen_bilal0x01.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  int _pageIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomeScreen(),
      SearchScreen(),
      AddScreen(),
      ProfileScreen(),
      NotificationsScreen(),
    ];
  }

  final _iconPaths = [
    StaticAssets.homeIcon,
    StaticAssets.searchIcon,
    StaticAssets.addIcon,
    StaticAssets.profileIcon,
    StaticAssets.notificationIcon,
  ];

  void onNavItemTouch(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        appBarTheme: AppBarTheme(
          foregroundColor: ThemeColors.darkGreyColor,
        ),
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              _pages[_pageIndex],
              Positioned(
                bottom: 15,
                right: 20,
                left: 20,
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: ThemeColors.darkGreyColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(_pages.length, (index) {
                        return IconButton(
                          onPressed: () => onNavItemTouch(index),
                          iconSize: 26,
                          icon: SvgPicture.asset(
                            _iconPaths[index],
                            width: 25,
                            height: 25,
                            fit: BoxFit.contain,
                            colorFilter: _pageIndex == index
                                ? ColorFilter.mode(
                                    ThemeColors.primaryColor, BlendMode.srcIn)
                                : ColorFilter.mode(ThemeColors.secondaryColor,
                                    BlendMode.srcIn),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
