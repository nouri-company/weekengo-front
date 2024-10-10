import 'package:flutter/material.dart';

import 'color_palette.dart';

class TextStyles {
  static const String fontFamily = 'Pretendard';

  // Title Styles
  static TextStyle titleXxLarge({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 28,
        fontWeight: FontWeight.bold,
        height: 1.4,
        color: color,
      );

  static TextStyle titleXLarge({Color color = ColorPalette.black}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        height: 1.6,
        color: color,
      );

  static TextStyle titleLarge({Color color = ColorPalette.black}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 1.6,
        color: color,
      );

  static TextStyle titleMedium({Color color = ColorPalette.black}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        height: 1.6,
        color: color,
      );

  static TextStyle titleSmall({Color color = ColorPalette.black}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        height: 1.6,
        color: color,
      );

  static TextStyle titleXSmall({Color color = ColorPalette.black}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        height: 1.6,
        color: color,
      );

  static TextStyle titleXxSmall({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        height: 1.6,
        color: color,
      );

  // Subtitle Styles
  static TextStyle subTitleXLarge({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        // Semi Bold
        height: 1.6,
        color: color,
      );

  static TextStyle subTitleLarge({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        // Semi Bold
        height: 1.6,
        color: color,
      );

  static TextStyle subTitleMedium({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        // Semi Bold
        height: 1.6,
        color: color,
      );

  static TextStyle subTitleSmall({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        // Semi Bold
        height: 1.6,
        color: color,
      );

  static TextStyle subTitleXSmall({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        // Semi Bold
        height: 1.6,
        color: color,
      );

  static TextStyle subTitleXxSmall({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        // Semi Bold
        height: 1.6,
        color: color,
      );

  // Body Styles
  static TextStyle bodyLarge({Color color = ColorPalette.black}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.normal,
        // Regular
        height: 1.6,
        color: color,
      );

  static TextStyle bodyMedium({Color color = ColorPalette.black}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        // Regular
        height: 1.6,
        color: color,
      );

  static TextStyle bodySmall({Color color = ColorPalette.black}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        // Regular
        height: 1.6,
        color: color,
      );

  static TextStyle bodyXSmall({Color color = ColorPalette.black}) => TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        height: 1.6,
        color: color,
      );

  static TextStyle captionLarge({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.normal,
        // Regular
        height: 1.4,
        color: color,
      );

  static TextStyle captionMedium({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        // Regular
        height: 1.4,
        color: color,
      );

  static TextStyle captionSmall({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        // Regular
        height: 1.4,
        color: color,
      );

  static TextStyle captionXSmall({Color color = ColorPalette.black}) =>
      TextStyle(
        fontFamily: fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        // Regular
        height: 1.4,
        color: color,
      );
}
