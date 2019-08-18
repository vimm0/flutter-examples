import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Navigation Drawer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Drawer App"),
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          ListTile(title: Text("Page One"), trailing: Icon(Icons.arrow_upward),)
        ],),
      ),
    );
  }
}
