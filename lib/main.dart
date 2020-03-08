import 'package:flutter/material.dart';
import './screens/pizza.dart';
import './screens/menu.dart';
//import './screens/helloWold.dart';

void main() => runApp(new HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Layouts",
      home: new Menu(),
      debugShowCheckedModeBanner: false,
    );

  }




//  BUILD METHOD FOR HELLO WORLD
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//        title: "Hello flutter App",
//        home: Scaffold(
//          appBar: AppBar(
//            title: Text("Title in App Bar"),
//          ),
//          body: HelloWorld()
//        ));
//  }
}
