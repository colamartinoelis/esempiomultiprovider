import 'package:flutter/material.dart';
import './Screen/Home.dart';
import 'package:multiprovider/Model/Stato1.dart';
import 'package:multiprovider/Model/Stato2.dart';
import 'package:provider/provider.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MultiProvider(providers: [
      new ChangeNotifierProvider(create: (context)=> new Stato1()),
      new ChangeNotifierProvider(create: (context)=> new Stato2()),
    ], child: new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Home(),
      theme: new ThemeData( primaryColor: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity),

    ),);
  }
}
