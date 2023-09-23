import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task 6'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),

        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),

          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert)
          ),
        ],

        flexibleSpace: SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 50,
            color: Colors.white,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.purpleAccent,
            height: 50,
            width: double.infinity,
            child: Center(
              child: Text("Hello world"),
            ),
          ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: Container(),
    );
  }
}

