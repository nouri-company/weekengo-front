import 'package:flutter/material.dart';
import 'package:weekengo_front/theme/color_palette.dart';
import 'package:weekengo_front/theme/text_styles.dart';

class LgDisabledButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;

  const LgDisabledButton({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.height = 53,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Material(
        color: ColorPalette.grey50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.titleMedium(color: ColorPalette.grey300),
          ),
        ),
      ),
    );
  }
}
