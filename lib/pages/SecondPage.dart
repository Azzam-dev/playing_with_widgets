import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 2'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.orange[300],
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashPage(),
                  ));
            },
            child: Hero(
              tag: "flutter_dash",
              child: Icon(
                Icons.flutter_dash,
                size: 100,
              ),
            ),
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
          ),
        ),
      ),
    );
  }
}

class DashPage extends StatelessWidget {
  const DashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Hero(
              tag: "flutter_dash",
              child: Icon(
                Icons.flutter_dash,
                size: 200,
              ),
            ),
            Text("this is a photo of a beard")
          ],
        ),
      ),
      backgroundColor: Colors.orange[100],
    );
  }
}
