import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new MyApp(),));

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => new MyAppState(); 
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: new AppBar(
      centerTitle: true,  
      title: new Text('Big Boy Header',style:TextStyle( fontSize: 40.0)),
      ),
      
      body: new  Container(
        color: Colors.lightBlue,
          child: new Column(
             crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(30.0)
            ),
            new RaisedButton(
              padding: EdgeInsets.symmetric( vertical: 16.0),
             child: new Text('Yes', textAlign: TextAlign.center, 
             style: new TextStyle( fontSize: 30.0, color: Colors.green, fontWeight: FontWeight.bold),
             ),
              highlightColor: Colors.yellow,  
               splashColor: Colors.redAccent,
               onPressed: () {
                 Navigator.push(context, 
                 new MaterialPageRoute( builder: (context)=> new YesScreen())
                 );
               }
               
            ),  
               

            new Padding(
              padding: new EdgeInsets.all(60.0),
            ),

            new Center(
              child: new Text('Click one!', textAlign: TextAlign.center, 
              style: new TextStyle(fontSize: 40.0, color: Colors.white, 
            fontStyle: FontStyle.italic,  fontWeight: FontWeight.bold)),
            ),

          new Padding(
              padding: new EdgeInsets.all(60.0),
            ),

          new RaisedButton(

             padding: EdgeInsets.symmetric(vertical: 16.0),
             child: new Text('No', textAlign: TextAlign.center, 
             style: new TextStyle( fontSize: 30.0, color: Colors.green, fontWeight: FontWeight.bold),
             ),
              highlightColor: Colors.yellow,
              splashColor: Colors. redAccent,
              onPressed: () {
                 Navigator.push(context, 
                 new MaterialPageRoute( builder: (context)=> new NoScreen())
                 );
              } 
          )
           ],
         ), 
           
      ), 
        ); 
}
}
class NoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
 appBar: new AppBar(
   centerTitle: true,
   title: new Text('My No Screen'),
 ),
 body: new  Container(
        color: Colors.lightBlue,
          child: new Column(
             crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(30.0)
            ),
            
            new Center(
              child: new Text('NoNoNo', textAlign: TextAlign.center, 
              style: new TextStyle(fontSize: 40.0, color: Colors.white, 
            fontStyle: FontStyle.italic,  fontWeight: FontWeight.bold)),
            ),
          ],
    )
 ),
    );
  }
}
class YesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
 appBar: new AppBar(
   centerTitle: true,
   title: new Text('My No Screen'),
 ),
 body: new  Container(
        color: Colors.lightBlue,
          child: new Column(
             crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(30.0)
            ),
 
            new Center(
              child: new Text('YesYesYes', textAlign: TextAlign.center, 
              style: new TextStyle(fontSize: 40.0, color: Colors.white, 
            fontStyle: FontStyle.italic,  fontWeight: FontWeight.bold)),
            ),
          ],
    )
 ),
    );
  }
}