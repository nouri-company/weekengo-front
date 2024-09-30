import 'package:flutter/material.dart';
import 'theme/color_palette.dart';
import 'widget/card_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('이번 주말에 뭐하지?'),
        titleTextStyle: const TextStyle(
          color: Color(ColorPalette.blue),
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            CardButton(
              appealText: "testtesttest",
            ),
            CardButton(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavigationBarItems,
        showUnselectedLabels: true,
        selectedItemColor: const Color(ColorPalette.blue),
        unselectedItemColor: const Color(ColorPalette.black),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  final _bottomNavigationBarItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '탐색',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '저장',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '기록',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '공유',
    ),
  ];
}
