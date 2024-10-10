import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weekengo_front/theme/color_palette.dart';
import 'package:weekengo_front/theme/text_styles.dart';

class MdPrimaryButton extends StatelessWidget {
  final String text;
  final String? icon;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const MdPrimaryButton({
    super.key,
    required this.text,
    this.icon,
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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                SvgPicture.asset(
                  'assets/icons/${icon!}',
                  width: 20,
                  height: 20,
                  colorFilter: const ColorFilter.mode(ColorPalette.white, BlendMode.srcIn),
                ),
              if (icon != null) const SizedBox(width: 4), // 이모지와 텍스트 사이의 간격
              Text(
                text,
                style: TextStyles.titleSmall(color:ColorPalette.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
