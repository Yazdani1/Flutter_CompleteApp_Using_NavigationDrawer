import 'package:flutter/material.dart';
import 'pages/First Page.dart';
import 'pages/SecondPage.dart';
import 'pages/ThirdPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Navigation Drawer"),
        backgroundColor: Colors.deepPurple,
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Dani"),
                accountEmail: new Text("aaa@gmail.com"),
              decoration: new BoxDecoration(
                color: Colors.deepPurple
              ),
            ),
            
            new ListTile(
              title: new Text("First Page"),
              leading: new Icon(Icons.title),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext ct)=>FirstPage()));
              },
            ),
            
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.add),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext d)=>SecondPage()));
              },
            ),
            
            new ListTile(
              title: new Text("Third Page"),
              leading: new Icon(Icons.print),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext s)=>ThirdPage()));
              },
            ),
            
            new Divider(
              color: Colors.deepOrange,
              height: 30.0,
            ),
            
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),
            )
            
            
          ],
        ),
      ),
    body: new Center(
      child: new Text("Home Page",style: new TextStyle(fontSize: 50.0),),
    ),

    );
  }
}
