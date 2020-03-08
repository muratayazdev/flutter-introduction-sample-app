import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Material(
        color: Colors.deepPurple,
        child: Center(
          child: Text(
            sayHello(),
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 36.0),
          ),
        ),
      ),
    );
  }

  String sayHello() {
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;
    if(hour < 12) {
      hello = "Good Morning";
    }
    else if(hour < 18) {
      hello = "Good afternon";
    }
    else {
      hello = "Good Evening";
    }

    String minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();

    return "It is now " + hour.toString() + ":" + minutes.toString() + ". \n" + hello;
  }
}
