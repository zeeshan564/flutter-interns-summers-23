import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_colors.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_spaces.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/fi_as2_hira_static_assets.dart';
import '../../widgets/design/fi_as2_hira_avatar.dart';

part 'widgets/fi_as2_hira_card.dart';

class H1Home extends StatelessWidget {
  const H1Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Spaces.h20,
              Padding(
                padding: const EdgeInsets.all(27.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(StaticAssets.menu),
                    SvgPicture.asset(StaticAssets.notification),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  H1Avatar(
                    showBorder: false,
                    hasAddButton: true,
                    child: Image.asset(
                      StaticAssets.girl1,
                    ),
                  ),
                  H1Avatar(
                    child: Image.asset(
                      StaticAssets.man1,
                    ),
                  ),
                  H1Avatar(
                    child: Image.asset(
                      StaticAssets.girl2,
                    ),
                  ),
                  H1Avatar(
                    child: Image.asset(
                      StaticAssets.man1,
                    ),
                  ),
                ],
              ),
              Spaces.h40,
              const H1Cardbox(),
              Spaces.h40,
            ],
          ),
        ),
      ),
    );
  }
}
