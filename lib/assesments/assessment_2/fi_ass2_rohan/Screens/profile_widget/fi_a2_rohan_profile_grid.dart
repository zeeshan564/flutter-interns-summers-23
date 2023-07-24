part of '../fi_a2_rohan_profile.dart';

class FiA2RohanProfileGrid extends StatelessWidget {
  final String path;
  final String path1;
  final String path2;
  final String path3;

  const FiA2RohanProfileGrid(
      {super.key,
      required this.path,
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
              child: Image.asset(path),
            ),
          ),
          rohanWidthSizedBox2,
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
                    child: Image.asset(path1),
                  ),
                ),
              ),
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
                    child: Image.asset(path2),
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(path3),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
