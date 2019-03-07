import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

       var iconButton = IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
                // Navigator.of(context).push(new MaterialPageRoute(builder: (ctx) {
                //     return new NewDet();
                // }));
            }
     );
    return Scaffold(
      appBar: new AppBar(
        title: new Text('首页'),
        actions: <Widget>[
          iconButton
        ],
      ),
      body: new Text('data'),
      // floatingActionButton :new FloatingActionButton (

      //   child: new Icon(Icons.add),
      //   onPressed: _onAdd(context),
      // )
    );
  }



  //  _onAdd(BuildContext context){

  //   Fluttertoast.showToast(
  //     msg: 'cr'
  //   );


  // }

}


class NewDet extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          '详情界面',
          style:new TextStyle(color:Colors.white)
          ),
          iconTheme: new IconThemeData(color: Colors.white),
      ),

      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("News Detail Page."),
            new RaisedButton(
              child: new Text("Back"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        )
      ),
    );
  }
} 