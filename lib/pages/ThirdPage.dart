import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({
    super.key,
  });

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  double xAlignment = 0;
  double yAlignment = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
      child: Center(
        child: Stack(
          children: [
            AnimatedAlign(
              duration: Duration(seconds: 1),
              alignment: Alignment(xAlignment, yAlignment),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              yAlignment -= 0.1;
                            });
                          },
                          child: Text("up")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              yAlignment += 0.1;
                            });
                          },
                          child: Text("down")),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
