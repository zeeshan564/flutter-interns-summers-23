import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/f1_as2_amna_assets.dart';

part 'widget/_fi_as2_amna_card.dart';

class F1As2AmnaHome extends StatelessWidget {
  const F1As2AmnaHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      F1As2AmnaAssets.girl_1,
      F1As2AmnaAssets.man_1,
      F1As2AmnaAssets.girl_2,
      F1As2AmnaAssets.man_1,
      F1As2AmnaAssets.girl_1,
      F1As2AmnaAssets.girl_2,
    ];

    List<Widget> cards = [
      const _F1As2AmnaCard(),
      const _F1As2AmnaCard(),
    ];
    Widget smallSpace = const SizedBox(
      height: 10.0,
    );
    Widget mediumSpace = const SizedBox(
      height: 32.0,
    );
    Widget imageWidth = const SizedBox(
      width: 32.0,
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            right: 25.0,
            left: 25.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(F1As2AmnaAssets.menu),
                  SvgPicture.asset(F1As2AmnaAssets.notification),
                ],
              ),
              mediumSpace,
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: generateImagesWithSeparator(images, imageWidth),
                  )),
              mediumSpace,
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 505.0,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: generateCardsWithSeparator(cards, smallSpace),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> generateImagesWithSeparator(
      List<String> images, Widget separator) {
    List<Widget> imageWidget =
        images.map((image) => Image.asset(image)).toList();
    List<Widget> widgetsWithSeparator =
        imageWidget.expand((widget) => [widget, separator]).toList();
    widgetsWithSeparator.removeLast(); // Remove the last separator at the end
    return widgetsWithSeparator;
  }

  List<Widget> generateCardsWithSeparator(
      List<Widget> cards, Widget separator) {
    List<Widget> widgetsWithSeparator =
        cards.expand((widget) => [widget, separator]).toList();

    return widgetsWithSeparator;
  }
}
