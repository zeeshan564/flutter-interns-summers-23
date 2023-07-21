import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Colors/fi_ass_rohan_colors.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/profile/fi_ass2_rohan_profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../SizedBox copy/fi_ass2_rohan_size.dart';
import '../design/fi_ass2_rohan_avator.dart';

class FiAssRohanHome extends StatefulWidget {
  const FiAssRohanHome({super.key});

  @override
  State<FiAssRohanHome> createState() => _FiAssRohanHomeState();
}

class _FiAssRohanHomeState extends State<FiAssRohanHome> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/svgs/menu.svg"),
                  SvgPicture.asset("assets/svgs/notification.svg")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/girl1.png'),
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
                  FiAssRohanAvator(
                    child: Image.asset("assets/man1.png"),
                  ),
                  FiAssRohanAvator(
                    child: Image.asset("assets/girl2.png"),
                  ),
                  FiAssRohanAvator(
                    child: Image.asset("assets/man1.png"),
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
                          color: MyColors.pink,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(2),
                            child: Image.asset("assets/man1.png"),
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
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 248,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "assets/card.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  rohanSmallSizedBox2,
                  Padding(
                    padding: const EdgeInsets.only(left: 45, top: 10),
                    child: Row(
                      children: [
                        Image.asset(
                            width: 20,
                            height: 20,
                            "assets/fi_ass2_rohan_assets/Like.png"),
                        const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            '573',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Image.asset(
                              width: 20,
                              height: 20,
                              "assets/fi_ass2_rohan_assets/Coment.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            '30',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Image.asset(
                              width: 20,
                              height: 20,
                              "assets/fi_ass2_rohan_assets/Share.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Text(
                            '35 min ago',
                            style: TextStyle(
                                fontSize: 10,
                                color: MyColors.grey,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40, top: 10),
                        child: Text(
                          "Down the road",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            rohanSmallSizedBox2,
            Container(
              alignment: Alignment.center,
              width: 290,
              height: 60,
              decoration: BoxDecoration(
                color: MyColors.darkgrey,
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 0;
                        });
                      },
                      child: Icon(Icons.home,
                          color: i == 0 ? MyColors.pink : MyColors.grey)),
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 1;
                        });
                      },
                      child: Icon(Icons.search,
                          color: i == 1 ? MyColors.pink : MyColors.grey)),
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 2;
                        });
                      },
                      child: Icon(Icons.add_box,
                          color: i == 2 ? MyColors.pink : MyColors.grey)),
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 3;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FiAssRohanProfile()),
                        );
                      },
                      child: Icon(Icons.person,
                          color: i == 3 ? MyColors.pink : MyColors.grey)),
                  InkWell(
                      onTap: () {
                        setState(() {
                          i = 4;
                        });
                      },
                      child: Icon(Icons.notifications,
                          color: i == 4 ? MyColors.pink : MyColors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
