part of '../login_screen_bilal0x01.dart';

class _LogoBilal0x01 extends StatelessWidget {
  const _LogoBilal0x01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Image.asset(
        StaticAssets.logoImg,
        fit: BoxFit.cover,
      ),
    );
  }
}
