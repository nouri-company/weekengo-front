import 'package:flutter/material.dart';
import 'package:weekengo_front/theme/color_palette.dart';
import 'package:weekengo_front/theme/text_styles.dart';

class MdDisabledButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const MdDisabledButton({
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
        color: ColorPalette.grey50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.titleSmall(color: ColorPalette.grey300),
          ),
        ),
      ),
    );
  }
}
