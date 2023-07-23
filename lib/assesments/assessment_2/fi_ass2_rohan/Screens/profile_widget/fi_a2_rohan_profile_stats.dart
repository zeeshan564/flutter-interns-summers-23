part of '../fi_a2_rohan_profile.dart';

class FiA2RohanProfileStats extends StatelessWidget {
  final String text1;
  final String text2;
  const FiA2RohanProfileStats(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              text1,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0xff706C6C),
              ),
            ),
            Text(
              text2,
              style: const TextStyle(
                  fontSize: 18,
                  color: FiA2RohanColors.black,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
