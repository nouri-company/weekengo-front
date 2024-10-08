import 'package:flutter/material.dart';
import 'package:weekengo_front/theme/color_palette.dart';

class MdPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const MdPrimaryButton({
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
      child: Material(
        color: ColorPalette.primary500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          splashFactory: InkRipple.splashFactory,
          onTap: onPressed,
          splashColor: Colors.transparent,
          highlightColor: ColorPalette.primary700,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: ColorPalette.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
