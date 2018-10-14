import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  var height = 50.0;
  var width = 50.0;
  var color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              height: height,
              width: width,
              color: color,
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 500),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.pink;
                    height += 50.0;
                    width += 50.0;
                  });
                },
                child: Text("Click me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
