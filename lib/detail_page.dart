import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Animations Demo"),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: "hero",
            child: FlutterLogo(
              size: 200.0,
            ),
          )
        ],
      ),
    );
  }
}
