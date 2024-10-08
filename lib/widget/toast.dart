import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weekengo_front/theme/color_palette.dart';
import 'package:weekengo_front/theme/text_styles.dart';

class Toast extends StatelessWidget {
  final String text;
  final String? icon;
  final double width;
  final double height;

  const Toast({
    super.key,
    required this.text,
    this.icon,
    this.width = double.infinity,
    this.height = 46,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 46,
        minWidth: 157,
      ),
      // width: width,
      // height: height,
      child: Material(
        color: ColorPalette.toast.withOpacity(0.6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                SvgPicture.asset(
                  'assets/icons/${icon!}',
                  width: 16,
                  height: 16,
                  colorFilter: const ColorFilter.mode(
                      ColorPalette.white, BlendMode.srcIn),
                ),
              if (icon != null) const SizedBox(width: 4), // 이모지와 텍스트 사이의 간격
              Text(
                text,
                style: TextStyles.subTitleXSmall(color: ColorPalette.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
