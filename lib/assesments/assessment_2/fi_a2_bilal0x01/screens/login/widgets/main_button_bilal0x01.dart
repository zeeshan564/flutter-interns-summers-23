part of '../login_screen_bilal0x01.dart';

class _MainButtonBilal0x01 extends StatelessWidget {
  final Color buttonColor;
  final VoidCallback clickedAction;
  final Widget content;
  const _MainButtonBilal0x01({
    required this.buttonColor,
    required this.clickedAction,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: ThemeColorsBilal0x01.fadedOrangeColor,
          width: 1.5,
        ),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onTap: clickedAction,
        child: Center(
          heightFactor: 3,
          child: content,
        ),
      ),
    );
  }
}
