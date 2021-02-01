import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {

  String previousAmount;
  Calculator({this.previousAmount});

  @override
  CalculatorState createState() => CalculatorState();

}

class CalculatorState extends State<Calculator> {

  var tipPercent = 0;
  double tipAmount = 0;
  double totalAmount = 0;

  TextEditingController t2 = new TextEditingController();

  void doCalculate()
  {
      tipPercent = int.parse(t2.text);
      tipAmount = ((int.parse(widget.previousAmount) * tipPercent)/100);
      totalAmount = int.parse(widget.previousAmount) + tipAmount;
  }

  createAlertDialog(BuildContext context){
    return showDialog(context: context,builder: (context){
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(" Amount = ${int.parse(widget.previousAmount)} "),
              Text(" Tip Percent = $tipPercent"+"%"),
              Text(" Tip Amount = $tipAmount "),
              Text(" Total Amount = $totalAmount "),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tip Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              " Amount = ${int.parse(widget.previousAmount)} ",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Text(
              "Enter tip percentage:",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter tip percentage:"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("Calculate"),
                  color: Colors.greenAccent,
                  onPressed: () {
                    doCalculate();
                    createAlertDialog(context);
                  }
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
          ],
        ),
      ),
    );
  }

}