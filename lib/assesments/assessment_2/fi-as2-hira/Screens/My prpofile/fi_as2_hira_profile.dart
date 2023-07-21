import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/My%20prpofile/widgets/fi_as2_hira_part1.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/My%20prpofile/widgets/fi_as2_hira_part3.dart';

import 'widgets/fi_as2_hira_text.dart';
import 'widgets/fi_as2_hira_part2.dart';

class H1Profile extends StatelessWidget {
  const H1Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Widget smallspace = const SizedBox(
      height: 25,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'My Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          smallspace,
          const H1Part1(),
          smallspace,
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                H1Text(text1: 'Photos', text2: '315'),
                H1Text(text1: 'Followers', text2: '77.5k'),
                H1Text(text1: 'Follows', text2: '500'),
              ],
            ),
          ),
          smallspace,
          const H1Part2(),
          smallspace,
          const H1Part3(),
        ],
      ),
    );
  }
}
