import 'package:flutter/material.dart';

import '../../constants/fi_as2_hira_colors.dart';

class H1Avatar extends StatelessWidget {
  final Widget child;
  final bool showBorder;
  final bool hasAddButton;
  const H1Avatar({
    super.key,
    required this.child,
    this.showBorder = true,
    this.hasAddButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: showBorder ? Constants.pink : Colors.transparent,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(3.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(2),
          child: Stack(
            alignment: Alignment.center,
            children: [
              child,
              if (hasAddButton)
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_box,
                    color: Colors.white,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
