part of '../fi_a2_rohan_profile.dart';

class FiA2RohanProfileHeader extends StatelessWidget {
  const FiA2RohanProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(FiA2RohanImages.girl1),
            radius: 50,
          ),
          rohanSmallSizedBox2,
          Text(
            "Kathrine Mils",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          rohanSmallSizedBox1,
          Text(
            "@kathrine_mils",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
