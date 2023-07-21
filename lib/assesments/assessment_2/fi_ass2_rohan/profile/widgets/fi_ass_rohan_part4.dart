import 'package:flutter/material.dart';

class FiAssRohanPart4 extends StatelessWidget {
  final String path;
  final String path1;
  final String path2;
  final String path3;

  const FiAssRohanPart4(
      {required this.path,
      required this.path1,
      required this.path2,
      required this.path3});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 250,
      child: Row(
        children: [
          Container(
            height: 272,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(path)),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3, right: 6),
                child: Container(
                  height: 80,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(path1)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3, right: 6),
                child: Container(
                  height: 80,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(path2)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 3, right: 6),
                child: Container(
                  height: 80,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(path3)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
