import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/utils/fi_as2_amna_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/fi_as2_amna_constants.dart';

class FiAs2Avatar extends StatelessWidget {
  final String imagePath;
  final bool showBorder;
  final bool putAddButton;

  const FiAs2Avatar({
    super.key,
    required this.imagePath,
    this.showBorder = true,
    this.putAddButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 39.0,
      backgroundColor:
          showBorder ? F1As2AmnaConstants.primaryColor : Colors.transparent,
      child: CircleAvatar(
        radius: 36.0,
        backgroundColor: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 34.0,
              backgroundImage: AssetImage(imagePath),
            ),
            if (putAddButton)
              SvgPicture.asset(
                F1As2AmnaAssets.add,
                color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}
