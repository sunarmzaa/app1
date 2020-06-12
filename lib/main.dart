import 'package:flutter/material.dart';
void main() => runApp(MyApp());

var headerSection = Container(
  color: Colors.red,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        "assets/images/coc.jpg", width: 200,
      ),
      Container(margin: EdgeInsets.only(top: 10),child: Column (children: <Widget>[
        Text(" CoC Resturant",  style: TextStyle(color: Colors.black, fontSize: 20 ),
        ),
        Text(" Phuket Thailand", style: TextStyle(color: Colors.black, fontSize: 15))
      ],),),
    ],
  ),
);

var menuSection = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Container(
        color: Colors.green,
        height: 320,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset('assets/images/Menu1.jpg'),
                Text(
                  " Menu1", style: TextStyle(color: Colors.black, fontSize: 23),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset('assets/images/Menu2.jpg'),
                Text(
                  "   Menu2", style: TextStyle(color: Colors.black, fontSize: 23),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset('assets/images/Menu3.jpg'),
                Text(
                  "  Menu3", style: TextStyle(color: Colors.black, fontSize: 23),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset('assets/images/Menu4.jpg'),
                Text(
                  "  Menu4", style: TextStyle(color: Colors.black, fontSize: 23),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Image.asset('assets/images/Menu5.jpg'),
                Text(
                  "  Menu5", style: TextStyle(color: Colors.black, fontSize: 23),
                )
              ],
            ),
          ],
        ))
  ],
);

var iconSection = Container(
    margin: EdgeInsets.only(top: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(children: <Widget>[
          Icon(Icons.thumb_up, size: 50),
          Text("Like", style: TextStyle(fontSize: 30))
        ]),
        Column(children: <Widget>[
          Icon(Icons.comment, size: 50),
          Text("Comment", style: TextStyle(fontSize: 30))
        ]),
      ],
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test 2",
      home: Scaffold(
        appBar: AppBar(title: Text("Pheeraphon")),
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          headerSection,
          menuSection,
          iconSection,
        ]),
      ),
    );
  }
}