import 'package:flutter/material.dart';
import 'calculator.dart';

class Amount extends StatefulWidget {
  @override
  State createState() => new AmountState();
}

class AmountState extends State<Amount> {

  TextEditingController t1 = TextEditingController();

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
              "Enter amount:",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter amount"),
              controller: t1,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: new Text("Next"),
                  color: Colors.greenAccent,
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Calculator(previousAmount : t1.text),
                    )),
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