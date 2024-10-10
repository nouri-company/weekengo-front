import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weekengo_front/theme/color_palette.dart';
import 'package:weekengo_front/theme/text_styles.dart';

class FilledPinkLabel extends StatelessWidget {
  final String text;
  final String? icon;

  const FilledPinkLabel({
    super.key,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorPalette.pink,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              SvgPicture.asset(
                'assets/icons/${icon!}',
                width: 16,
                height: 16,
                colorFilter: const ColorFilter.mode(ColorPalette.white, BlendMode.srcIn),
              ),
            if (icon != null) const SizedBox(width: 2), // 이모지와 텍스트 사이의 간격
            Text(
              text,
              style: TextStyles.subTitleXxSmall(color:ColorPalette.white),
            ),
          ],
        ),
      ),
    );
  }
}
