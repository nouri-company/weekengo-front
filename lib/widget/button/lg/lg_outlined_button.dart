import 'package:flutter/material.dart';
import 'package:weekengo_front/theme/color_palette.dart';

class LgOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const LgOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 53,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          splashFactory: InkRipple.splashFactory,
          side: WidgetStateProperty.resolveWith<BorderSide>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return const BorderSide(
                  color: ColorPalette.primary700, width: 1.0);
            }
            return const BorderSide(color: ColorPalette.primary500, width: 1.0);
          }),
          foregroundColor:
              WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return ColorPalette.primary700;
            }
            return ColorPalette.primary500;
          }),
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
