part of '../fi_as2_hira_profile.dart';

class H1Text extends StatelessWidget {
  final String heading;
  final String subheading;
  const H1Text({super.key, required this.heading, required this.subheading});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          heading,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Constants.fontgrey,
          ),
        ),
        Text(
          subheading,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Constants.black,
          ),
        ),
      ],
    );
  }
}
