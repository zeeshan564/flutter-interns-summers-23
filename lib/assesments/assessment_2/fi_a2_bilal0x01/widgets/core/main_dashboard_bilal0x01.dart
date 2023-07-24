import 'package:flutter/material.dart';

import '../../utils/assets_bilal0x01.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../screens/profile/profile_screen_bilal0x01.dart';
import '../../theme/theme_colors_bilal0x01.dart';
import '../../screens/home/home_screen_bilal0x01.dart';
import '../../screens/notifications/notifications_screen_bilal0x01.dart';
import '../../screens/add/add_screen_bilal0x01.dart';
import '../../screens/search/search_screen_bilal0x01.dart';

class MainDashboardBilal0x01 extends StatefulWidget {
  const MainDashboardBilal0x01({super.key});

  @override
  State<MainDashboardBilal0x01> createState() => _MainDashboardBilal0x01State();
}

class _MainDashboardBilal0x01State extends State<MainDashboardBilal0x01> {
  int _pageIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomeScreenBilal0x01(),
      const SearchScreenBilal0x01(),
      const AddScreenBilal0x01(),
      const ProfileScreenBilal0x01(),
      const NotificationsScreenBilal0x01(),
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
      data: ThemeData(
        fontFamily: "Inter",
        appBarTheme: const AppBarTheme(
          foregroundColor: ThemeColorsBilal0x01.darkGreyColor,
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
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: ThemeColorsBilal0x01.darkGreyColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
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
                                ? const ColorFilter.mode(
                                    ThemeColorsBilal0x01.primaryColor,
                                    BlendMode.srcIn,
                                  )
                                : const ColorFilter.mode(
                                    ThemeColorsBilal0x01.secondaryColor,
                                    BlendMode.srcIn,
                                  ),
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
