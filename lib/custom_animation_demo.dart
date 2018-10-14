import 'package:flutter/material.dart';

class CustomAnimationDemo extends StatefulWidget {
  @override
  _CustomAnimationDemoState createState() => _CustomAnimationDemoState();
}

class _CustomAnimationDemoState extends State<CustomAnimationDemo>
    with SingleTickerProviderStateMixin {
  var height = 100.0;
  var width = 100.0;
  var color = Colors.blue;

  AnimationController animationController;
  Animation sizeAnimation;
  Animation colorAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    sizeAnimation =
        Tween(begin: 100.0, end: 200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red)
        .animate(animationController);
    sizeAnimation.addListener(() {
      setState(() {});
    });

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

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
            Container(
              height: sizeAnimation.value,
              width: sizeAnimation.value,
              color: colorAnimation.value,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: animationController.isAnimating
                  ? Container()
                  : RaisedButton(
                      onPressed: () {
                        setState(() {
                          animationController.forward();
                        });
                      },
                      child: Text("Animate me"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
