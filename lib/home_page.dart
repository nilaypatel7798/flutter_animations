import 'package:flutter/material.dart';
import 'package:flutter_animations/detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Animations Demo"),
      ),
      body: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              _navigateToDetailsScreen();
            },
            child: Hero(
              tag: "hero",
              child: FlutterLogo(
                size: 50.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _navigateToDetailsScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return new DetailPage();
      })
    );
  }
}
