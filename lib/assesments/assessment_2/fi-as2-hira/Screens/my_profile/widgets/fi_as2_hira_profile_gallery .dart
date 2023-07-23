part of '../fi_as2_hira_profile.dart';

class H1ProfileGallery extends StatelessWidget {
  const H1ProfileGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 275,
          width: 195,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset('assets/fi-as2-hira-assets/pic1.png'),
        ),
        Column(
          children: [
            Container(
              height: 80,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/fi-as2-hira-assets/pic2.png'),
            ),
            Spaces.h15,
            Container(
              height: 80,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/fi-as2-hira-assets/pic3.png'),
            ),
            Spaces.h15,
            Container(
              height: 80,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('assets/fi-as2-hira-assets/pic4.png'),
            ),
          ],
        ),
      ],
    );
  }
}
