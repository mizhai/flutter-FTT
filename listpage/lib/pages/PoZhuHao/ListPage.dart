import 'package:flutter/material.dart';


class ListPage extends StatelessWidget {
  final ValueChanged<int> onChanged;
  ListPage({Key key,@required this.onChanged}) :super (key :key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListPageWidget(
        onChanged: onChanged,
      ),
    ); 
  }
}

class ListPageWidget extends StatelessWidget {
   final ValueChanged<int> onChanged;
   final _listitles = ['ListView.builder','ListView.separated','无限加载列表','添加固定表头'];
   ListPageWidget({Key key,@required this.onChanged}) :super (key :key);

     Widget build(BuildContext context) {
     return Scaffold(
       body: new ListView.builder(
         itemCount: _listitles.length,
         padding: const EdgeInsets.all(16),
         itemBuilder: (context, i) {
           return new ListTile(
             title: new Text(_listitles[i]),
             onTap: (){
               onChanged(i);
             }
           );
         }
       ),
     );
     } 
}

// // class ListPageState extends State<ListPageWidget> {
//   // final ValueChanged<int> onChanged;

//   // var _listitles = ['ListView.builder','ListView.separated','无限加载列表','添加固定表头'];

//   // ListPageState(this.onChanged);
//   // @override
//   // Widget build(BuildContext context) {
     

     
//   //    return Scaffold(
//   //     //  appBar: new AppBar(
//   //     //    title: Text('data'),
//   //     //  ),


//   //      body: new ListView.builder(
//   //        itemCount: _listitles.length,
//   //        padding: const EdgeInsets.all(16),
//   //        itemBuilder: (context, i) {
//   //          return new ListTile(
//   //            title: new Text(_listitles[i]),
//   //            onTap: (){
//   //              onChanged(i);

              
//   //            }
//   //          );
//   //        }
//   //      ),
//   //    );
//   // }

// //   _tapPush(int index, BuildContext context ) {
// //     // var _viwe ;
// //     // switch (index) {
// //     //   case 0: 
// //     //     _viwe = new ListViewbuilderPage();
// //     //     break;
// //     //   case 1:
      
// //     //     break;
// //     //   case 2:
       
// //     //    break;
// //     //   case 3:


// //     //     break;
// //     //   default:

// //     //     break;
// //     // }

// //      Navigator.of(context).push(new MaterialPageRoute(builder: (ctx) {
// //          return new ListViewbuilderPage();      
// //      }));
// //   }
// // }


// // class ListViewbuilderPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: new ListView.builder(
// //         itemCount: 100,
// //         itemExtent: 50.0,
// //         itemBuilder: (BuildContext context, int index) {
// //           return ListTile(title: Text("$index"));
// //         },
// //       ),
// //     );
     
// //   }

    






