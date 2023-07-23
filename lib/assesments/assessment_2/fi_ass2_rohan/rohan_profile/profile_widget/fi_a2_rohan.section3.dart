import 'package:flutter/material.dart';

import '../../rohan_utils/fi_a2_rohan_colors.dart';

class FiA2RohanProfileSection3 extends StatefulWidget {
  const FiA2RohanProfileSection3({super.key});

  @override
  State<FiA2RohanProfileSection3> createState() =>
      _FiA2RohanProfileSection3State();
}

class _FiA2RohanProfileSection3State extends State<FiA2RohanProfileSection3> {
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
              color: FiA2RohanColors.darkgrey,
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
                  color: FiA2RohanColors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Tagged',
              style: TextStyle(
                  color: FiA2RohanColors.grey,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}
