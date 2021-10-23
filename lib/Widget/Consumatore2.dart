import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:multiprovider/Model/Stato2.dart';
import 'package:provider/provider.dart';

class Consumatore2 extends StatelessWidget {
final String testo = loremIpsum(words: 1, paragraphs: 1);

@override
Widget build(BuildContext context) {
  return new Consumer<Stato2>(builder: (context, stato2, child) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(
            padding: EdgeInsets.all(20),
            color: Colors.red,
            child: new RaisedButton(
                onPressed: () => stato2.cambiaColore(),
                child: new Text('cambia Colore Container'))),
        new Container(
          padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),

          color: stato2.x,
          child: new Text(testo, style: new TextStyle(color: Colors
              .white70, fontSize: 20, fontWeight: FontWeight.bold),),
        ),
      ],
    );
  });
}
}
