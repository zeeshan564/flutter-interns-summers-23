import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/utils/fi_as2_amna_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'views/fi_as2_amna_photo_view.dart';
part 'views/fi_as2_amna_video_view.dart';
part 'views/fi_as2_amna_photo_tagged.dart';

class FiAs2ProfileCard extends StatefulWidget {
  const FiAs2ProfileCard({super.key});

  @override
  State<FiAs2ProfileCard> createState() => _FiAs2ProfileCardState();
}

class _FiAs2ProfileCardState extends State<FiAs2ProfileCard> {
  static const List<String> titles = ["Photos", "Video", "Tagged"];
  static const List<Widget> views = [
    _FiAs2PhotoView(),
    _FiAs2AmnaVideoView(),
    _FiAs2AmnaTaggedView(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    const smallWidth = SizedBox(
      width: 5,
    );
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
          ),
          child: Row(
            children: buildCardRow(smallWidth),
          ),
        ),
        views[currentIndex],
      ],
    );
  }

  List<Widget> buildCardRow(Widget separator) {
    List<Widget> columns = titles
        .asMap()
        .entries
        .map((entry) => GestureDetector(
              onTap: () => setState(() {
                currentIndex = entry.key;
              }),
              child: currentIndex == entry.key
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF535357),
                      ),
                      child: Text(
                        entry.value,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                      ),
                      child: Text(
                        entry.value,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
            ))
        .toList();
    List<Widget> widgetsWithSeparator =
        columns.expand((widget) => [widget, separator]).toList();
    widgetsWithSeparator.add(SvgPicture.asset(FiAs2AmnaAssets.more));
    return widgetsWithSeparator;
  }
}
