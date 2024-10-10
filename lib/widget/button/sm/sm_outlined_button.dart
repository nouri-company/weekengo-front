import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weekengo_front/theme/color_palette.dart';
import 'package:weekengo_front/theme/text_styles.dart';

class SmOutlinedButton extends StatelessWidget {
  final String text;
  final String? icon;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const SmOutlinedButton({
    super.key,
    required this.text,
    this.icon,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 38,
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
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              SvgPicture.asset(
                'assets/icons/${icon!}',
                width: 16,
                height: 16,
                colorFilter: const ColorFilter.mode(ColorPalette.primary500, BlendMode.srcIn),
              ),
            if (icon != null) const SizedBox(width: 4), // 이모지와 텍스트 사이의 간격
            Text(
              text,
              style: TextStyles.titleXSmall(color:ColorPalette.primary500),
            ),
          ],
        ),
      ),
    );
  }
}
