part of '../home_screen_bilal0x01.dart';

class _MainFeedBilal0x01 extends StatelessWidget {
  const _MainFeedBilal0x01();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, i) {
          return Column(
            children: [
              i == 0 ? const _StoryCarouselBilal0x01() : const SizedBox(),
              Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                elevation: 4,
                child: Column(
                  children: [
                    ListTile(
                      visualDensity: const VisualDensity(vertical: 0.1),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      titleAlignment: ListTileTitleAlignment.center,
                      horizontalTitleGap: 8,
                      leading: CircularImageBuilderBilal0x01(
                        hasBorder: true,
                        bgImage: posts[i].profileImage,
                        size: 18,
                      ),
                      title: Text(
                        posts[i].username,
                      ),
                      subtitle: subtitle(posts[i].userid),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 20,
                      ),
                      child: Image(
                        image: posts[i].postImage,
                      ),
                    ),
                    smallVertSpace,
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  for (var index = 0; index <= 2; index++)
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          index == 0
                                              ? StaticAssets.likeIcon
                                              : index == 1
                                                  ? StaticAssets.commentIcon
                                                  : StaticAssets.shareIcon,
                                        ),
                                        smallHorzSpace,
                                        Text(
                                          index == 0
                                              ? posts[i].likes.toString()
                                              : index == 1
                                                  ? posts[i].comments.toString()
                                                  : "",
                                        ),
                                        mediumHorzSpace,
                                      ],
                                    ),
                                ],
                              ),
                              subtitle(
                                posts[i].timestamp,
                              ),
                            ],
                          ),
                          mediumVertSpace,
                          Container(
                            alignment: Alignment.centerLeft,
                            child: smallTitle(
                              posts[i].title,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    mediumVertSpace
                  ],
                ),
              ),
            ],
          );
        },
        itemCount: posts.length,
      ),
    );
  }
}
