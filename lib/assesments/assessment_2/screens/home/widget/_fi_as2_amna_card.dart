part of "../fi_as2_amna_home.dart";

class _FiAs2AmnaCard extends StatelessWidget {
  const _FiAs2AmnaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 498.0,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(31, 0, 0, 0),
              offset: Offset(0, 5),
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const FiAs2Avatar(
                    imagePath: FiAs2AmnaAssets.girl_1,
                    showBorder: false,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    children: [
                      Text(
                        "Anton Demeron",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "@anton_demeron",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 70.0,
                  ),
                  SvgPicture.asset(FiAs2AmnaAssets.more),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Image.asset(FiAs2AmnaAssets.cardImg),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  SvgPicture.asset("assets/svgs/Like.svg"),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "573",
                    style:
                        TextStyle(fontSize: 11.5, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  SvgPicture.asset("assets/svgs/Coment.svg"),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "30",
                    style:
                        TextStyle(fontSize: 11.5, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  SvgPicture.asset(FiAs2AmnaAssets.cardImg),
                  const Spacer(),
                  const Text(
                    "35 min ago",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Down the road",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
