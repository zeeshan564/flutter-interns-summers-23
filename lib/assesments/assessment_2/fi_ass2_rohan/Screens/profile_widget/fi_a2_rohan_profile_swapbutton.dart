part of '../fi_a2_rohan_profile.dart';

class FiA2RohanProfileSwapButton extends StatefulWidget {
  const FiA2RohanProfileSwapButton({super.key});

  @override
  State<FiA2RohanProfileSwapButton> createState() =>
      _FiA2RohanProfileSwapButtonState();
}

class _FiA2RohanProfileSwapButtonState
    extends State<FiA2RohanProfileSwapButton> {
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
          const Text(
            'Video',
            style: TextStyle(
                color: FiA2RohanColors.grey,
                fontSize: 13.0,
                fontWeight: FontWeight.w500),
          ),
          const Text(
            'Tagged',
            style: TextStyle(
                color: FiA2RohanColors.grey,
                fontSize: 13.0,
                fontWeight: FontWeight.w500),
          ),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
