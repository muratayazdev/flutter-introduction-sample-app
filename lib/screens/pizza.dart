import "package:flutter/material.dart";

class OrderPizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza"),
      ),
      body: Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30.0, left: 30.0),
            color: Colors.deepOrangeAccent,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Margarita",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              decoration: TextDecoration.none,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      child: Text("Tomate, Mozarella, Basil",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Marinara",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 30.0,
                              decoration: TextDecoration.none,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.bold)),
                    ),
                    Expanded(
                      child: Text("Tomate, Garlic",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                              fontFamily: 'Oxygen',
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                PizzaImageWidget(),
                OrderButton(),
              ],
            )),
      ),
    );
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/asd.png');
    Image image = Image(image: pizzaAsset, width: 400.0, height: 400.0);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
        margin: EdgeInsets.only(top: 50.0),
        child: RaisedButton(
          child: Text("Order Your Pizza!"),
          color: Colors.lightGreen,
          elevation: 5.0,
          onPressed: () {
            order(context);
          },
        ));
    return button;
  }

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
