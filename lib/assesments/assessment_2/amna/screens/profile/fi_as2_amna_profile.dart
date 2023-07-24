import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/screens/profile/widget/fi_as2_amna_profile_card.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/utils/fi_as2_amna_assets.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/widgets/fi_as2_amna_avatar.dart';
import 'package:flutter_svg/svg.dart';
part 'widget/fi_as2_amna_stats.dart';

class FiAs2AmnaProfile extends StatelessWidget {
  const FiAs2AmnaProfile({Key? key}) : super(key: key);

  final bigSpace = const SizedBox(
    height: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                    SvgPicture.asset(FiAs2AmnaAssets.back),
                    const Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SvgPicture.asset(FiAs2AmnaAssets.settings),
                  ],
                ),
                bigSpace,
                const FiAs2Avatar(
                  imagePath: FiAs2AmnaAssets.girl_2,
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
                const _FiAs2AmnaStats(),
                const FiAs2ProfileCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
