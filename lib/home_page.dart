import 'package:flutter/material.dart';
import 'package:flutter_animations/animated_container_demo.dart';
import 'package:flutter_animations/custom_animation_demo.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Tap here to view HERO Animation..."),
                    leading: Hero(
                      tag: "hero_tag",
                      child: FlutterLogo(
                        size: 50.0,
                      ),
                    ),
                    onTap: _navigateToDetailsScreen,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  ListTile(
                    title: Text("Tap here to view Container Animation..."),
                    leading: FlutterLogo(
                      size: 50.0,
                    ),
                    onTap: _navigateToContainerAnimationScreen,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  ListTile(
                    title: Text("Tap here to view Custom Animation..."),
                    leading: FlutterLogo(
                      size: 50.0,
                    ),
                    onTap: _navigateToCustomAnimationScreen,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void _navigateToDetailsScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return new DetailPage();
    }));
  }

  void _navigateToContainerAnimationScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return new AnimatedContainerDemo();
    }));
  }

  void _navigateToCustomAnimationScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return new CustomAnimationDemo();
    }));
  }
}
