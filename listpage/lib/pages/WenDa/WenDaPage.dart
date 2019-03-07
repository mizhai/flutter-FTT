import 'package:flutter/material.dart';


class WenDaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: new AppBar(
        title: new Text('问答'),
        backgroundColor: Colors.red
      ),
      body: new ListViewSeparated(),

    );
  }
}

class ListViewSeparated extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    Widget divider1 = Divider(color: Colors.blue);
    Widget divider2 = Divider(color: Colors.green);
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext contexg, int index) {
        return ListTile(title: Text("$index"));
      } ,

      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? divider1:divider2;
      },
    );
  }
  
}




