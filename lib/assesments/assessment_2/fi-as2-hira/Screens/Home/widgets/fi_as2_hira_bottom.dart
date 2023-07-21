import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/Screens/My%20prpofile/fi_as2_hira_profile.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_colors.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/widgets/design/fi_as2_hira_sample.dart';

class H1Bottombar extends StatefulWidget {
  const H1Bottombar({super.key});

  @override
  State<H1Bottombar> createState() => _H1BottombarState();
}

class _H1BottombarState extends State<H1Bottombar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 350,
      decoration: BoxDecoration(
        color: Constants.darkgrey,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                index = 0;
              });
            },
            icon: Icon(
              Icons.home,
              color: index == 0 ? Constants.pink : Constants.grey,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                index = 1;
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const H1Sample()),
              );
            },
            icon: Icon(
              Icons.search,
              color: index == 1 ? Constants.pink : Constants.grey,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                index = 2;
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const H1Sample()),
              );
            },
            icon: Icon(
              Icons.add_box,
              color: index == 2 ? Constants.pink : Constants.grey,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                index = 3;
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const H1Profile()),
              );
            },
            icon: Icon(
              Icons.person,
              color: index == 3 ? Constants.pink : Constants.grey,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                index = 4;
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const H1Sample()),
              );
            },
            icon: Icon(
              Icons.notifications,
              color: index == 4 ? Constants.pink : Constants.grey,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
