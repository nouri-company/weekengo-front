import 'package:flutter/material.dart';
import 'home.dart';
import 'event_webview.dart';
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
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color(ColorPalette.blue)),
        useMaterial3: true,
      ),
      home: const EventWebView(url:"https://flutter.dev"),
    );
  }
}