part of '../fi_as2_hira_profile.dart';

class H1ProfileGallery extends StatelessWidget {
  H1ProfileGallery({super.key});

  final List<String> images = [
    StaticAssets.pic2,
    StaticAssets.pic3,
    StaticAssets.pic4,
  ];
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
          child: Image.asset(StaticAssets.pic1),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...images
                .asMap()
                .entries
                .map(
                  (e) => Container(
                    height: 80,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(4),
                    child: Image.asset(
                      e.value,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                .toList(),
            Spaces.h30,
          ],
        ),
      ],
    );
  }
}
