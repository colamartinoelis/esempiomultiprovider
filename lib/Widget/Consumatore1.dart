import 'package:multiprovider/Model/Stato1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Consumatore1 extends StatelessWidget {
  /*@override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Container(
            color: Colors.green,
            child: new Consumer<Stato1>(builder: (context, stato1, child) {
              return new RaisedButton(
                  onPressed: () => stato1.daiBuonanotte(),
                  child: new Text('Dai la BuonaNOTTE'));
            })),
        new Container(
          color: Colors.blue,
          child: new Text(Provider.of<Stato1>(context, listen:false).testo),
          ),
      ],
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return new Consumer<Stato1>(builder: (context, stato1, child) {
      return new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(20),
              color: Colors.green,
              child: new RaisedButton(
                  onPressed: () => stato1.daiBuonanotte(),
                  child: new Text('Dai la BuonaNOTTE'))),
          new Container(
            padding: EdgeInsets.all(36),
            alignment: Alignment.center,
            color: Colors.blue,
            child: new Text(stato1.testo,),
          ),
        ],
      );
    });
  }
}
