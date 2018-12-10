import 'package:flutter/material.dart';
import 'package:flutter_app_drawer/pages/ThirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => new _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Second Page"),
        backgroundColor: Colors.deepPurpleAccent,
      ),

      floatingActionButton: new FloatingActionButton(
          onPressed: ()=>Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=>ThirdPage())),
          child: new Icon(Icons.add),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
      ),

    );
  }
}
