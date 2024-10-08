import 'package:flutter/material.dart';
import 'package:weekengo_front/theme/color_palette.dart';
import 'package:weekengo_front/widget/modal.dart';

class ErrorModal extends StatelessWidget {
  final String title;
  final String content;

  const ErrorModal({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white.withOpacity(0.5),
      body: Center(
        child: Center(
          child: Modal(
            title: title,
            content: content,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
