part of '../fi_as2_hira_profile.dart';

class H1ProfileRowButton extends StatelessWidget {
  const H1ProfileRowButton({super.key});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Row(
      children: [
        Spaces.w20,
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
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        Spaces.w15,
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz,
            size: 32,
          ),
        ),
      ],
    );
  }
}
