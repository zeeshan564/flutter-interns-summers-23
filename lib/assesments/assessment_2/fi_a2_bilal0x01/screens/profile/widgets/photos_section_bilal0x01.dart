part of '../profile_screen_bilal0x01.dart';

class _PhotosSection extends StatelessWidget {
  const _PhotosSection();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SizedBox(
        height: 250,
        child: Row(
          children: [
            mediumHorzSpace,
            Expanded(
              child: _ClippedImage(
                imagePath: StaticAssets.profileSectionImg1,
              ),
            ),
            mediumHorzSpace,
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _ClippedImage(
                        imagePath: StaticAssets.profileSectionImg2,
                      ),
                    ),
                    smallVertSpace,
                    Expanded(
                      child: _ClippedImage(
                        imagePath: StaticAssets.profileSectionImg3,
                      ),
                    ),
                    smallVertSpace,
                    Expanded(
                      child: _ClippedImage(
                        imagePath: StaticAssets.profileSectionImg4,
                      ),
                    ),
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

class _ClippedImage extends StatelessWidget {
  const _ClippedImage({
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(25),
      child: Image.asset(
        imagePath,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
