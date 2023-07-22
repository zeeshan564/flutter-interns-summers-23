import 'package:flutter/material.dart';
import '../../theme/theme_colors_bilal0x01.dart';
import '../../theme/theme_spaces_bilal0x01.dart';
import '../../theme/theme_title_bilal0x01.dart';
import '../../utils/assets_bilal0x01.dart';
import '../../widgets/design/circular_image_builder_bilal0x01.dart';

part 'widgets/photos_section_bilal0x01.dart';
part 'widgets/cutom_tab_button_bilal0x01.dart';
part 'widgets/tabs_section_bilal0x01.dart';

class ProfileScreenBilal0x01 extends StatelessWidget {
  const ProfileScreenBilal0x01({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          smallHorzSpace
        ],
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              bigVertSpace,
              Column(
                children: [
                  CircularImageBuilderBilal0x01(
                    bgImage: AssetImage(StaticAssets.girlImg1),
                    hasBorder: false,
                    size: 40,
                  ),
                  mediumVertSpace,
                  mediumTitle("Kathrine Mils", fontWeight: FontWeight.bold),
                  smallVertSpace,
                  bigSubtitle("@kathrine_mils")
                ],
              ),
              bigVertSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var i = 0; i <= 2; i++)
                    Column(
                      children: [
                        bigSubtitle(
                            i == 0
                                ? "Photos"
                                : i == 1
                                    ? "Followers"
                                    : "Follows",
                            textColor: ThemeColorsBilal0x01.lightGreyColor),
                        smallVertSpace,
                        smallTitle(i == 0
                            ? "315"
                            : i == 1
                                ? "77.5k"
                                : "500"),
                      ],
                    )
                ],
              ),
              bigVertSpace,
              TabsSecion()
            ],
          ),
        ),
      ),
    );
  }
}
