part of '../fi_as2_hira_login.dart';

class H1Dotted extends StatelessWidget {
  final Color color;
  final Widget child;
  const H1Dotted({super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: color,
      borderType: BorderType.Circle,
      strokeWidth: 3,
      dashPattern: const [11, 9],
      padding: const EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(500),
        ),
        child: child,
      ),
    );
  }
}
