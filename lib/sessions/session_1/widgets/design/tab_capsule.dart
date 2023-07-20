import 'package:flutter/material.dart';

class TabCapsule extends StatefulWidget {
  const TabCapsule({super.key});

  @override
  State<TabCapsule> createState() => _TabCapsuleState();
}

class _TabCapsuleState extends State<TabCapsule> {
  // initState
  // dispose
  // ..

  // setState --> bascially helps to update the UI
  // it will call the nearest build() method

  /// index logic
  int currentTab = 0;

  /// String logic
  /// List<String> label =['swap', 'exchange']
  /// String currentLabel = ....

  // enum logic
  /// enum --> type
  /// enum TabLabel {swap, exchange}
  /// TabLabel currentLabel = ...

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 2; i++)
            GestureDetector(
              onTap: () {
                setState(() {
                  currentTab = i;
                });
              },
              child: Container(
                height: 60.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: currentTab == i
                      ? const Color(0xff39b54a)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    i == 0 ? 'Swap' : 'Exchange',
                    style: TextStyle(
                      color: currentTab == i ? Colors.white : Colors.grey,
                      fontSize: 23.0,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
