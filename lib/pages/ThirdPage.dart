import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => new _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  final List<String>listof=["Apple","Food","Product","ios","Android","Jim","Youtube"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Third Page"),
        backgroundColor: Colors.deepOrange,
      ),

      body: new ListView.builder(
          itemBuilder: (_,int index)=>Data(this.listof[index]),
          itemCount: this.listof.length,
      ),

    );
  }
}

class Data extends StatelessWidget{

  final String name;

  Data(this.name);

  @override
  Widget build(BuildContext context) {
    return new Card(

      margin: EdgeInsets.all(10.0),
      elevation: 2.0,

      child: new Container(

        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(6.0),

        child: new Row(
          children: <Widget>[

            new CircleAvatar(
              child: new Text(name[0]),
              backgroundColor: Colors.deepOrange,
            ),
            new Padding(padding: EdgeInsets.all(10.0)),
            new Text(name,style: new TextStyle(fontSize: 20.0),)

          ],
        ),

      ),
    );
  }

}





