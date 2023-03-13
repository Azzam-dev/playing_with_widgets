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
            title: Text("page One"),
            backgroundColor: Colors.green,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              margin: EdgeInsets.all(8),
              height: 200,
              color: Colors.green[200],
              child: Center(
                  child: Text(
                "$index",
                style: TextStyle(fontSize: 25),
              )),
            );
          }, childCount: 10))
        ],
      ),
    );
  }
}
