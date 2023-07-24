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

  final Map<String, String> _profileStats = const {
    'Photos': '315',
    'Followers': '77.5',
    'Follows': '500',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          smallHorzSpace
        ],
        centerTitle: true,
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              bigVertSpace,
              Column(
                children: [
                  const CircularImageBuilderBilal0x01(
                    bgImage: AssetImage(StaticAssets.girlImg1),
                    hasBorder: false,
                    size: 40,
                  ),
                  mediumVertSpace,
                  mediumTitle(
                    "Kathrine Mils",
                    fontWeight: FontWeight.bold,
                  ),
                  smallVertSpace,
                  bigSubtitle("@kathrine_mils")
                ],
              ),
              bigVertSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ..._profileStats.entries.map((profileData) {
                    return Column(
                      children: [
                        bigSubtitle(profileData.key),
                        smallVertSpace,
                        smallTitle(profileData.value),
                      ],
                    );
                  })
                ],
              ),
              bigVertSpace,
              const TabsSecion()
            ],
          ),
        ),
      ),
    );
  }
}
