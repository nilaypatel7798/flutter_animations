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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: _navigateToDetailsScreen,
                      child: Row(
                        children: <Widget>[
                          Hero(
                            tag: "hero_tag",
                            child: FlutterLogo(
                              size: 50.0,
                            ),
                          ),
                          Text("Tap here to veiw HERO Animation...")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: _navigateToContainerAnimationScreen,
                      child: Row(
                        children: <Widget>[
                          FlutterLogo(
                            size: 50.0,
                          ),
                          Text("Tap here to veiw Container Animation...")
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: _navigateToCustomAnimationScreen,
                      child: Row(
                        children: <Widget>[
                          FlutterLogo(
                            size: 50.0,
                          ),
                          Text("Tap here to veiw Custom Animation...")
                        ],
                      ),
                    ),
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
