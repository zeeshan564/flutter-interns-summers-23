import 'package:flutter/material.dart';

import '../../theme/theme_colors_bilal0x01.dart';

class CircularImageBuilderBilal0x01 extends StatelessWidget {
  const CircularImageBuilderBilal0x01({
    super.key,
    required this.bgImage,
    required this.hasBorder,
    this.size = 20,
    this.hasOverlay = false,
  });

  final bool hasBorder;
  final ImageProvider<Object> bgImage;
  final double size;
  final bool hasOverlay;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: hasBorder
          ? BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ThemeColorsBilal0x01.primaryColor,
                width: 3,
              ),
            )
          : const BoxDecoration(),
      child: FittedBox(
        fit: BoxFit.contain,
        child: CircleAvatar(
          backgroundImage: bgImage,
          radius: size,
          child: Stack(
            children: [
              if (hasOverlay)
                Positioned(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_box,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
