import 'package:flutter/material.dart';
import './pizza.dart';
import './helloWorld.dart';
import './tripCost.dart';
import 'package:firstapp/todoApp/screens/main.dart';
import './gestures.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blueGrey,
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              HelloWorldNavigationButton(),
              PizzaNavigationButton(),
              TripCostNavigationButton(),
              TodoListNavigationButton(),
              GestureNavigationButton()
            ],
          ),
        ),
      ),
    );
  }

}

class HelloWorldNavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
//        margin: EdgeInsets.only(top: 20.0),
        child: RaisedButton(
          child: Text('Hello World'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelloWorld()),
            );
          },
        ),);
    return button;
  }
}

class PizzaNavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
//      margin: EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        child: Text('Order Pizza'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderPizza()),
          );
        },
      ),);
    return button;
  }
}

class TripCostNavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
//      margin: EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        child: Text('Trip Cost'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TripCost()),
          );
        },
      ),);
    return button;
  }
}

class TodoListNavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
//      margin: EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        child: Text('Todo List'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Main()),
          );
        },
      ),);
    return button;
  }
}

class GestureNavigationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
//      margin: EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        child: Text('Gestures'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gestures()),
          );
        },
      ),);
    return button;
  }
}