part of '../fi_as2_amna_profile.dart';

class _FiAs2AmnaStats extends StatelessWidget {
  const _FiAs2AmnaStats();
  static const List<String> titles = ["Photos", "Followers", "Follows"];
  static const List<String> numbers = ["315", "77.5k", "500"];
  @override
  Widget build(BuildContext context) {
    const smallWidth = SizedBox(
      width: 50,
    );
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: buildStatBar(smallWidth),
      ),
    );
  }

  List<Widget> buildStatBar(Widget separator) {
    List<Widget> columns = titles.asMap().entries.map((entry) {
      int index = entry.key;
      String title = entry.value;
      String number = numbers[index];

      return Column(children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          number,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ]);
    }).toList();
    List<Widget> widgetsWithSeparator =
        columns.expand((widget) => [widget, separator]).toList();
    widgetsWithSeparator.removeLast(); //
    return widgetsWithSeparator;
  }
}
