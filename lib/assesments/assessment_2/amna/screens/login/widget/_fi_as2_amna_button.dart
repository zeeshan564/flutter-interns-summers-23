part of '../fi_as2_amna_login.dart';

class _Button extends StatelessWidget {
  final int i;
  final String value;
  const _Button({required this.i, required this.value});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 330.0,
        decoration: BoxDecoration(
            color: i == 0 ? Colors.transparent : FiAs2AmnaColors.primaryColor,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: i == 0 ? Colors.black : Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
