part of '../home_screen_bilal0x01.dart';

class _StoryCarousel extends StatelessWidget {
  const _StoryCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> _carouselImages = const [
      StaticAssets.girlImg1,
      StaticAssets.manImg1,
      StaticAssets.girlImg2,
      StaticAssets.manImg2
    ];

    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemExtent: 100,
        scrollDirection: Axis.horizontal,
        itemCount: _carouselImages.length,
        itemBuilder: (context, index) {
          return CircularImageBuilder(
            hasBorder: index == 0 ? false : true,
            hasOverlay: index == 0 ? true : false,
            bgImage: AssetImage(
              _carouselImages[index],
            ),
          );
        },
      ),
    );
  }
}
