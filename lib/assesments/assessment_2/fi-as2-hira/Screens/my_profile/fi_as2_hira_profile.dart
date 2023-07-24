import 'package:flutter/material.dart';
import 'package:flutter_interns/assesments/assessment_2/fi-as2-hira/constants/fi_as2_hira_static_assets.dart';
import '../../constants/fi_as2_hira_colors.dart';
import '../../constants/fi_as2_hira_spaces.dart';
part 'widgets/fi_as2_hira_profile_container.dart';
part 'widgets/fi_as2_hira_profilerow_button.dart';
part 'widgets/fi_as2_hira_profile_gallery.dart';
part 'widgets/fi_as2_hira_text.dart';

class H1Profile extends StatelessWidget {
  const H1Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Spaces.h25,
            const H1ProfileContainer(),
            Spaces.h25,
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  H1Text(heading: 'Photos', subheading: '315'),
                  H1Text(heading: 'Followers', subheading: '77.5k'),
                  H1Text(heading: 'Follows', subheading: '500'),
                ],
              ),
            ),
            Spaces.h25,
            const H1ProfileRowButton(),
            Spaces.h25,
            H1ProfileGallery(),
          ],
        ),
      ),
    );
  }
}
