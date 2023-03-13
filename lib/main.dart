import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: pageController,
          children: [
            Container(
              color: Colors.green[300],
              child: Center(
                child: Text('page 1'),
              ),
            ),
            Container(
              color: Colors.orange[300],
              child: Center(
                child: Text('page 2'),
              ),
            ),
            Container(
              color: Colors.blue[300],
              child: Center(
                child: Text('page 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
