part of '../profile_screen_bilal0x01.dart';

class TabsSecion extends StatefulWidget {
  const TabsSecion({super.key});

  @override
  State<TabsSecion> createState() => _TabsSecionState();
}

class _TabsSecionState extends State<TabsSecion>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (var i = 0; i <= 2; i++)
              _CustomTabButton(
                label: i == 0
                    ? 'Photos'
                    : i == 1
                        ? "Video"
                        : "Tagged",
                onTapped: () {
                  setState(() {
                    _tabController.animateTo(
                      i == 0
                          ? 0
                          : i == 1
                              ? 1
                              : 2,
                    );
                  });
                },
                isSelected: _tabController.index == i,
              ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            )
          ],
        ),
        mediumVertSpace,
        SizedBox(
          height: 400,
          child: TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              _PhotosSection(),
              Text(
                'Videos here',
                textAlign: TextAlign.center,
              ),
              Text(
                'Tagged here',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
