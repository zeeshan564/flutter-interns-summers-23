
part of '../fi_as2_hira_profile.dart';

class H1Part2 extends StatelessWidget {
  const H1Part2({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(left: 20)),
        for (int i = 0; i < 3; i++)
          Container(
            height: 39,
            width: 95,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: index == i ? Constants.darkgrey : Colors.white),
            child: Text(
              i == 0
                  ? 'Photo'
                  : i == 1
                      ? 'Video'
                      : 'Tagged',
              style: TextStyle(
                  color: index == i ? Constants.textgrey : Constants.fontgrey,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                size: 32,
              )),
        )
      ],
    );
  }
}
