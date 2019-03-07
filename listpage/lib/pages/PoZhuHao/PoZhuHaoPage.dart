import 'package:flutter/material.dart';
import 'ListPage.dart';
import 'package:listpage/pages/My/NewsDetailPage.dart';
import 'package:fluttertoast/fluttertoast.dart';
class PoZhuHaoPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new PoZhuHaoWidget(),
    );
  }
}


class PoZhuHaoWidget extends StatefulWidget {
  _PoZhuHaoWidgetState createState() => _PoZhuHaoWidgetState();
}


class  _PoZhuHaoWidgetState extends State<PoZhuHaoWidget> with SingleTickerProviderStateMixin {

  TabController _tabController;
  var tabs = ['LIST','历史','图片'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length:tabs.length,
      vsync: this
    );
  }

  //  _tapPush() {
  //   //  Navigator.push(context, new MaterialPageRoute(builder: (context) => new NewDetailPage()));
  //   }

_tap(int i ){
  Navigator.push(context, new MaterialPageRoute(builder: (context) => new NewDetailPage()));

    print('点你大爷');



}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('破竹号'),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map(
            (e) => Tab(text:e)).toList(),
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          new ListPage(
            onChanged: _tap,
          ),
          new NewDetailPage(),
          new NewDetailPage(),

        ],
      )
    );
    
    
  }

  

  
  


  
}

