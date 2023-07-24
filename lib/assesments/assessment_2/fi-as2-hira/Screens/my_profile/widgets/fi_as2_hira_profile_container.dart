part of '../fi_as2_hira_profile.dart';

class H1ProfileContainer extends StatelessWidget {
  const H1ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipRRect(
              child: Image.asset(
                'assets/girl1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Spaces.h20,
        const Text(
          'Kathrine Mils',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        Spaces.h10,
        const Text(
          '@kathrine_mils',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Constants.fontgrey),
        ),
      ],
    );
  }
}
