part of '../fi_as2_amna_profile_card.dart';

class _FiAs2PhotoView extends StatelessWidget {
  const _FiAs2PhotoView();
  static const List<String> imagePaths = [
    FiAs2AmnaAssets.image_2,
    FiAs2AmnaAssets.image_3,
    FiAs2AmnaAssets.image_4,
  ];
  @override
  Widget build(BuildContext context) {
    const smallSpace = SizedBox(
      height: 10,
    );
    return SafeArea(
        child: Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            FiAs2AmnaAssets.image_1,
            width: 170,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: generateImagesWithSeparator(imagePaths, smallSpace),
          )
        ],
      ),
    ));
  }

  List<Widget> generateImagesWithSeparator(
      List<String> images, Widget separator) {
    List<Widget> imageWidgets = images
        .asMap()
        .entries
        .map(
          (entry) => Image.asset(
            entry.value,
            width: 130,
          ),
        )
        .toList();
    List<Widget> imagesWithSeparator =
        imageWidgets.expand((widget) => [widget, separator]).toList();
    imagesWithSeparator.removeLast(); // Remove the last separator at the end
    return imagesWithSeparator;
  }
}
