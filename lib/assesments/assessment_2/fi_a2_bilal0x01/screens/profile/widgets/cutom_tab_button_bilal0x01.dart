part of '../profile_screen_bilal0x01.dart';

class _CustomTabButton extends StatelessWidget {
  const _CustomTabButton({
    required this.label,
    required this.onTapped,
    required this.isSelected,
  });

  final String label;
  final VoidCallback onTapped;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith((states) {
          return 0;
        }),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            return isSelected
                ? ThemeColorsBilal0x01.darkGreyColor
                : Colors.white;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            return isSelected ? Colors.white : Colors.black;
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      onPressed: () {
        onTapped();
      },
      child: Text(label),
    );
  }
}
