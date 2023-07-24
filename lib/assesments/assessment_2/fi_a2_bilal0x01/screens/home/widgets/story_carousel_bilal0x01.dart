part of '../home_screen_bilal0x01.dart';

class _StoryCarouselBilal0x01 extends StatelessWidget {
  const _StoryCarouselBilal0x01();

  final List<String> _carouselImages = const [
    StaticAssets.girlImg1,
    StaticAssets.manImg1,
    StaticAssets.girlImg2,
    StaticAssets.manImg2
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemExtent: 100,
        scrollDirection: Axis.horizontal,
        itemCount: _carouselImages.length,
        itemBuilder: (context, index) {
          return CircularImageBuilderBilal0x01(
            hasBorder: index != 0,
            hasOverlay: index == 0,
            bgImage: AssetImage(
              _carouselImages[index],
            ),
          );
        },
      ),
    );
  }
}
