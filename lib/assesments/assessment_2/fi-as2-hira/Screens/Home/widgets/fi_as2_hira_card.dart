part of '../fi_as2_hira_home.dart';

class H1Cardbox extends StatelessWidget {
  const H1Cardbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 400,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Constants.lightgrey,
            blurRadius: 4.0,
          ),
        ],
        color: Constants.boxgrey,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Constants.pink,
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(2),
                  child: Image.asset(StaticAssets.man1),
                ),
              ),
            ),
            title: const Text(
              'Anton Demeron',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              '@anton_demeron',
            ),
            trailing: const Icon(
              Icons.more_horiz,
              size: 40,
            ),
          ),
          Container(
            height: 250,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                StaticAssets.card,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Spaces.h10,
          Row(
            children: [
              Spaces.w15,
              SvgPicture.asset(StaticAssets.like),
              Spaces.w5,
              const Text(
                '573',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              ),
              Spaces.w10,
              SvgPicture.asset(StaticAssets.coment),
              Spaces.w5,
              const Text(
                '30',
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
              ),
              Spaces.w15,
              SvgPicture.asset(StaticAssets.share),
              const Spacer(),
              const Text(
                '35 min ago',
                style: TextStyle(
                    fontSize: 14,
                    color: Constants.grey,
                    fontWeight: FontWeight.w700),
              ),
              Spaces.w15,
            ],
          ),
          Spaces.h10,
          const Row(
            children: [
              Spaces.w20,
              Text(
                "Down the road",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
