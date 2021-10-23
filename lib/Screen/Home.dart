import 'package:flutter/material.dart';
import 'package:multiprovider/Widget/Consumatore1.dart';
import 'package:multiprovider/Widget/Consumatore2.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          centerTitle: true,
            leading: new Icon(Icons.ac_unit_outlined),
            title: new Text(
              'MULTIPROVIDER',
              style: new TextStyle(
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            ),
            backgroundColor: Colors.orange),
        body: new Padding(
          padding: EdgeInsets.all(16),
          child: new Column(
            children: <Widget>[
              new Consumatore1(),
              new SizedBox(height: 10),
              new Consumatore2(),
            ],
          ),
        ));
  }
}
