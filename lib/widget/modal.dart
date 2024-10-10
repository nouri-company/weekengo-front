import 'package:flutter/material.dart';
import 'package:weekengo_front/theme/color_palette.dart';
import 'package:weekengo_front/theme/text_styles.dart';
import 'package:weekengo_front/widget/button/lg/lg_primary_button.dart';

class Modal extends StatelessWidget {
  final String title;
  final String content;
  final String buttonText;
  final VoidCallback onPressed;

  const Modal({
    super.key,
    required this.title,
    required this.content,
    this.buttonText = "확인",
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.all(48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title,
            style: TextStyles.titleMedium(color: ColorPalette.grey900),
          ),
          const SizedBox(height: 4),
          Text(
            content,
            style: TextStyles.bodyMedium(color: ColorPalette.grey700),
          ),
          const SizedBox(height: 16),
          LgPrimaryButton(
            text: buttonText,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
