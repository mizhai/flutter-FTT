import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyAppPage(),
    );
  }
}


class MyAppPage extends StatefulWidget {
  @override
  createState() => new MyAppPageState(); 
}

class MyAppPageState extends State<MyAppPage> {

  @override
  Widget build(BuildContext context) {
     return new Scaffold(

       appBar: new AppBar(
         title: new Text('测试'),
       ),

       body: new Center(
         child: _buildGrid(),

       ),
     );
  }
}


Widget _buildGrid() {
  return new GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4.0),
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
    children: _buildGrudTitleList(100),
  );

}

List<Container> _buildGrudTitleList(int count) {
  return new List<Container>.generate(
    count,
    (int index) => new Container(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Image.asset('images/1.jpg'),
          new Text('test')
        ],
      ),
    )
  );
}