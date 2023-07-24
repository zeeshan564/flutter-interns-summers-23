import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/amna/utils/fi_as2_amna_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/fi_as2_amna_constants.dart';

class FiAs2Avatar extends StatelessWidget {
  final String imagePath;
  final bool showBorder;
  final bool putAddButton;
  final double size;

  const FiAs2Avatar({
    super.key,
    required this.imagePath,
    this.showBorder = true,
    this.putAddButton = false,
    this.size = 34.0,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 39.0,
      backgroundColor:
          showBorder ? FiAs2AmnaColors.primaryColor : Colors.transparent,
      child: CircleAvatar(
        radius: 36.0,
        backgroundColor: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: size,
              backgroundImage: AssetImage(imagePath),
            ),
            if (putAddButton)
              SvgPicture.asset(
                FiAs2AmnaAssets.add,
                color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}
