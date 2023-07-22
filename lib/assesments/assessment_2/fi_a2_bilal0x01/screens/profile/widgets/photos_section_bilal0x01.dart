part of '../profile_screen_bilal0x01.dart';

class _PhotosSection extends StatelessWidget {
  const _PhotosSection({super.key});

  Widget clippedImageBuilder(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(25),
      child: Image.asset(
        width: double.infinity,
        height: double.infinity,
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 250,
        child: Row(
          children: [
            mediumHorzSpace,
            Expanded(
                child: clippedImageBuilder(StaticAssets.profileSectionImg1)),
            mediumHorzSpace,
            Expanded(
              child: Container(
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: clippedImageBuilder(
                            StaticAssets.profileSectionImg2)),
                    smallVertSpace,
                    Expanded(
                        child: clippedImageBuilder(
                            StaticAssets.profileSectionImg3)),
                    smallVertSpace,
                    Expanded(
                        child: clippedImageBuilder(
                            StaticAssets.profileSectionImg4)),
                  ],
                ),
              ),
            ),
            mediumHorzSpace,
          ],
        ),
      ),
    );
  }
}
