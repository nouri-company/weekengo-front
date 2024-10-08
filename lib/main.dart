import 'package:flutter/material.dart';
import 'error_modal.dart';
import 'home.dart';
import 'theme/color_palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorPalette.primary500),
        useMaterial3: true,
        fontFamily: "Pretendard",
      ),
      home: const ErrorModal(title: "대표님이 울지말래요", content: "칭찬도 받고 격려도 받고 완전 럭키비키자낭🤭"),
    );
  }
}
