import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'widget/_fi_as2_amna_card.dart';

class F1As2AmnaHome extends StatelessWidget {
  const F1As2AmnaHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/girl1.png',
      'assets/man1.png',
      'assets/girl2.png',
      'assets/man2.png',
    ];
    Widget smallSpace = const SizedBox(
      height: 40.0,
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
                SvgPicture.asset("assets/svgs/menu.svg"),
                SvgPicture.asset("assets/svgs/notification.svg"),
              ],
            ),
            smallSpace,
            Row(children: generateImagesWithSeparator(images, imageWidth)),
            smallSpace,
            const _F1As2AmnaCard(),
          ],
        ),
      )),
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
}
