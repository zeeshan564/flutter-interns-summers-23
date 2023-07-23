import 'package:flutter/material.dart';
import '../rohan_utils/fi_a2_rohan_colors.dart';
import '../rohan_utils/fi_a2_rohan_images.dart';
import '../rohan_utils/fi_a2_rohan_sizebox.dart';
part 'profile_widget/fi_a2_rohan_profile_swapbutton.dart';
part 'profile_widget/fi_a2_rohan_profile_grid.dart';
part 'profile_widget/fi_a2_rohan_profile_stats.dart';
part 'profile_widget/fi_a2_rohan_profile_header.dart';

class FiA2RohanProfile extends StatelessWidget {
  const FiA2RohanProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: FiA2RohanColors.black,
            ),
          ),
          title: const Text(
            "My Profile",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: FiA2RohanColors.black),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.settings,
                color: FiA2RohanColors.black,
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            FiA2RohanProfileHeader(),
            rohanSmallSizedBox3,
            rohanSmallSizedBox3,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FiA2RohanProfileStats(
                  text1: 'Photos',
                  text2: '315',
                ),
                FiA2RohanProfileStats(
                  text1: 'Followers',
                  text2: '77.5k',
                ),
                FiA2RohanProfileStats(
                  text1: 'Follows',
                  text2: '500',
                ),
              ],
            ),
            rohanSmallSizedBox3,
            rohanSmallSizedBox3,
            rohanSmallSizedBox2,
            FiA2RohanProfileSwapButton(),
            FiA2RohanProfileGrid(
                path: FiA2RohanImages.sun,
                path1: FiA2RohanImages.fun,
                path2: FiA2RohanImages.tree,
                path3: FiA2RohanImages.rock),
          ],
        ),
      ),
    );
  }
}
