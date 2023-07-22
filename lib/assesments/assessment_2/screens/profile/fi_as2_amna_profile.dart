import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/utils/fi_as2_amna_assets.dart';
import 'package:flutter_interns/assesments/assessment_2/widgets/fi_as2_amna_avatar.dart';
import 'package:flutter_svg/svg.dart';

class FiAs2AmnaProfile extends StatelessWidget {
  const FiAs2AmnaProfile({Key? key}) : super(key: key);

  final bigSpace = const SizedBox(
    height: 60,
  );

  static const List<String> titles = ["Photos", "Followers", "Follows"];
  static const List<String> numbers = ["315", "77.5k", "500"];

  @override
  Widget build(BuildContext context) {
    const smallWidth = SizedBox(
      width: 50,
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            right: 30.0,
            left: 30.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(F1As2AmnaAssets.back),
                  const Text(
                    "My Profile",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SvgPicture.asset(F1As2AmnaAssets.settings),
                ],
              ),
              bigSpace,
              const FiAs2Avatar(
                imagePath: F1As2AmnaAssets.girl_2,
                showBorder: false,
                size: 40,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Katherine Mils",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "@katherine_mils",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              bigSpace,
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: buildStatBar(smallWidth),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildStatBar(Widget separator) {
    List<Widget> columns = titles.asMap().entries.map((entry) {
      int index = entry.key;
      String title = entry.value;
      String number = numbers[index];

      return Column(children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          number,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ]);
    }).toList();
    List<Widget> widgetsWithSeparator =
        columns.expand((widget) => [widget, separator]).toList();
    widgetsWithSeparator.removeLast(); //
    return widgetsWithSeparator;
  }
}
