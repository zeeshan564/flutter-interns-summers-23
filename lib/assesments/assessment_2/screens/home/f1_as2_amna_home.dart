import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallSpace = const SizedBox(
      height: 40.0,
    );
    Widget smallWidth = const SizedBox(
      width: 32.0,
    );
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 40.0,
          bottom: 40.0,
          right: 25.0,
          left: 25.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/svgs/menu.svg"),
                SvgPicture.asset("assets/svgs/notification.svg"),
              ],
            ),
            smallSpace,
            Row(
              children: [
                Image.asset("assets/girl1.png"),
                smallWidth,
                Image.asset("assets/man1.png"),
                smallWidth,
                Image.asset("assets/girl2.png"),
                smallWidth,
                Image.asset("assets/man2.png"),
              ],
            ),
            smallSpace,
            Container(
              height: 500,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(31, 0, 0, 0),
                    offset: Offset(0, 5),
                    blurRadius: 2.0,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/girl2.png"),
                        const SizedBox(
                          width: 15,
                        ),
                        const Column(
                          children: [
                            Text(
                              "Anton Demeron",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "@anton_demeron",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 80.0,
                        ),
                        SvgPicture.asset("assets/svgs/More.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Image.asset("assets/card.png"),
                    Row(
                      children: [
                        const SizedBox(
                          height: 50.0,
                        ),
                        SvgPicture.asset("assets/svgs/Like.svg"),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "573",
                          style: TextStyle(
                              fontSize: 11.5, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        SvgPicture.asset("assets/svgs/Coment.svg"),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "30",
                          style: TextStyle(
                              fontSize: 11.5, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        SvgPicture.asset("assets/svgs/Share.svg"),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
