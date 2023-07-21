import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi_ass2_rohan/Colors/fi_ass_rohan_colors.dart';

class FiAssRohanPart3 extends StatefulWidget {
  const FiAssRohanPart3({super.key});

  @override
  State<FiAssRohanPart3> createState() => _FiAssRohanPart3State();
}

class _FiAssRohanPart3State extends State<FiAssRohanPart3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 40,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60.0,
            width: 70.0,
            decoration: BoxDecoration(
              color: MyColors.darkgrey,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: const Center(
              child: Text(
                'Photos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Video',
              style: TextStyle(
                  color: MyColors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Tagged',
              style: TextStyle(
                  color: MyColors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(Icons.more_horiz)),
        ],
      ),
    );
  }
}
