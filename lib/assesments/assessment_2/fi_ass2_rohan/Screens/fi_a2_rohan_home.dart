import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../rohan_utils/fi_a2_rohan_colors.dart';
import '../rohan_utils/fi_a2_rohan_images.dart';
import '../rohan_utils/fi_a2_rohan_sizebox.dart';
import '../rohan_design/fi_a2_rohan_avator.dart';

class FiA2RohanHome extends StatefulWidget {
  const FiA2RohanHome({super.key});

  @override
  State<FiA2RohanHome> createState() => _FiA2RohanHomeState();
}

class _FiA2RohanHomeState extends State<FiA2RohanHome> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(FiA2RohanImages.menu),
                  SvgPicture.asset(FiA2RohanImages.notification),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(FiA2RohanImages.girl1),
                        radius: 27,
                      ),
                      Positioned(
                        top: 12,
                        right: 17,
                        child: Icon(
                          Icons.add_box,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ],
                  ),
                  FiA2RohanAvator(
                    child: Image.asset(FiA2RohanImages.man1),
                  ),
                  FiA2RohanAvator(
                    child: Image.asset(FiA2RohanImages.girl2),
                  ),
                  FiA2RohanAvator(
                    child: Image.asset(FiA2RohanImages.man1),
                  ),
                ],
              ),
            ),
            rohanSmallSizedBox2,
            Container(
              width: 300,
              height: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 0,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: FiA2RohanColors.pink,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(2),
                            child: Image.asset(FiA2RohanImages.man1),
                          ),
                        ),
                      ),
                    ),
                    title: const Text(
                      'Anton Demeron',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      '@anton_demeron',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: const Icon(
                      Icons.more_horiz,
                      size: 40,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 248,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          FiA2RohanImages.card,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  rohanSmallSizedBox2,
                  Row(
                    children: [
                      rohanWidthSizedBox5,
                      SvgPicture.asset(FiA2RohanImages.like),
                      rohanWidthSizedBox1,
                      const Text(
                        '573',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                      rohanWidthSizedBox2,
                      SvgPicture.asset(FiA2RohanImages.coment),
                      rohanWidthSizedBox1,
                      const Text(
                        '30',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                      rohanWidthSizedBox2,
                      SvgPicture.asset(FiA2RohanImages.share),
                      rohanWidthSizedBox5,
                      rohanWidthSizedBox5,
                      rohanWidthSizedBox5,
                      const Text(
                        '35 min ago',
                        style: TextStyle(
                            fontSize: 10,
                            color: FiA2RohanColors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  rohanSmallSizedBox2,
                  const Row(
                    children: [
                      rohanWidthSizedBox5,
                      Text(
                        "Down the road",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ],
              ),
            ),
            rohanSmallSizedBox2,
          ],
        ),
      ),
    );
  }
}
