import 'package:flutter/material.dart';

class Gestures extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GestureState();
}

class _GestureState extends State with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;
  int numTabs = 0;
  int numDoubleTabs = 0;
  int numLongPress = 0;
  double posX = 0.0;
  double posY = 0.0;
  double boxSize = 0.0;
  double fullBoxSize = 150.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    );
    
    animation.addListener((){
      setState(() {
        boxSize = fullBoxSize * animation.value;
      });
      center(context);
    });
    controller.forward();
  }

  @override void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (posX == 0.0) {
      center(context);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Gestures And Animations"),
      ),
      body: GestureDetector(
          onTap: () {
            setState(() {
              numTabs++;
            });
          },
          onDoubleTap: () {
            setState(() {
              numDoubleTabs++;
            });
          },
          onLongPress: () {
            setState(() {
              numLongPress++;
            });
          },
          onVerticalDragUpdate: (DragUpdateDetails value){
            setState(() {
              double delta= value.delta.dy;
              posY += delta;
            });
          },
          onHorizontalDragUpdate: (DragUpdateDetails value){
            setState(() {
              double delta= value.delta.dx;
              posX += delta;
            });
          },
          child: Stack(
            children: <Widget>[
              Positioned(
                left: posX,
                top: posY,
                child: Container(
                  width: boxSize,
                  height: boxSize,
                  decoration: BoxDecoration(color: Colors.red),
                ),
              )
            ],
          )),
      bottomNavigationBar: Material(
        color: Theme.of(context).primaryColorLight,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            "Taps: $numTabs - Double Taps: $numDoubleTabs - Long Presses: $numLongPress",
            style: Theme.of(context).textTheme.title,
            textScaleFactor: 0.9,
          ),
        ),
      ),
    );
  }

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30.0;

    setState(() {
      posX = posX;
      posY = posY;
    });
  }
}
