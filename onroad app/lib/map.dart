import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class mapi extends StatefulWidget {
  @override
  _mapiState createState() => _mapiState();
}

class _mapiState extends State<mapi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OnRoad',
          style: TextStyle(color: Colors.black, fontFamily: 'calibri'),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: FloatingActionButton(onPressed: () => launch("tel:8368158544"),
            child: Icon(Icons.local_hospital),),
          )
        ],
      ),
    );
  }
}
