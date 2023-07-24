part of '../home_screen_bilal0x01.dart';

class _TopBarBilal0x01 extends StatelessWidget {
  const _TopBarBilal0x01();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            iconSize: 26,
            icon: SvgPicture.asset(StaticAssets.menuIcon),
          ),
          IconButton(
            onPressed: () {},
            iconSize: 26,
            icon: SvgPicture.asset(StaticAssets.badgeNotificationIcon),
          ),
        ],
      ),
    );
  }
}
