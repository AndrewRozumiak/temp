import 'dart:math';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

/// Main widget
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

/// Main screen
class MainScreen extends StatefulWidget {
  @override
  _ColorState createState() => _ColorState();
}
class _ColorState extends State<MainScreen> {
  Color _backgroundColor = const Color(0xFFFFFFFF);
  void _changedBackgroundColor() {
    final randomColor = Random();
    setState(() {
      _backgroundColor = Color.fromARGB(
        255,
        randomColor.nextInt(256),
        randomColor.nextInt(256),
        randomColor.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changedBackgroundColor,
      child: CupertinoPageScaffold(
        backgroundColor: _backgroundColor,
        child: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
