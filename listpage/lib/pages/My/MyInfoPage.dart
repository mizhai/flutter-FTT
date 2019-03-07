import 'package:flutter/material.dart';
import 'NewsDetailPage.dart';

class MyInfoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var iconButton = IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (ctx) {
                    return new NewDetailPage();
                }));
            }
     );
    return Scaffold(

      appBar: AppBar(
        title: Text('我的'),
        actions: <Widget>[
          iconButton,
        ],
      ),

      drawer: new Drawer(
        child: new Center(
          child: new Text('data'),
        ),
      ),
    );

  }
}



class MyDrawer extends StatelessWidget {

  const MyDrawer({
    Key key ,
  }) :super(key:key);

  @override
  Widget build(BuildContext context) {
    
    return Drawer(

      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ClipOval(
                      child: Image.asset(
                        'imgs/avatar.png',
                        width: 80,
                      ),
                    ),
                  ),

                  Text(
                    '个人中心',
                    style:TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),

            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('add'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('setting'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}