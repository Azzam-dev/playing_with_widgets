import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[300],
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(" One"),
            backgroundColor: Colors.green,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.green[400],
                child: Text("green"),
                height: 100,
              ),
              Container(
                color: Colors.green[400],
                child: Text("green "),
                height: 100,
              )
            ]),
          ),
          SliverAppBar(
            pinned: true,
            title: Text("Two"),
            backgroundColor: Colors.orange,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.orange[400],
                child: Text("orange"),
                height: 100,
              ),
              Container(
                color: Colors.orange[400],
                child: Text("orange "),
                height: 100,
              )
            ]),
          ),
          SliverAppBar(
            pinned: true,
            title: Text("Three"),
            backgroundColor: Colors.red,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.red[400],
                  child: Text("red"),
                  height: 100,
                ),
                Container(
                  color: Colors.red[400],
                  child: Text("red "),
                  height: 100,
                )
              ],
            ),
          ),
          SliverAppBar(
            pinned: true,
            title: Text("Four"),
            backgroundColor: Colors.blue,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.blue[400],
                  child: Text("blue"),
                  height: 100,
                ),
                Container(
                  color: Colors.blue[400],
                  child: Text("blue "),
                  height: 100,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
