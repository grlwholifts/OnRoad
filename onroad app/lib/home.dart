import 'package:flutter/material.dart';
import 'map.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'PURNIKA',
                style: TextStyle(color: Colors.black, fontFamily: 'calibri'),
              ),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(),
            ),
            ListTile(
              title: Text('MY PROFILE'),
              trailing: Icon(Icons.person),
            ),
            ListTile(
              title: Text('CHANGE LANGUAGE'),
              trailing: Icon(Icons.translate),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 300.0),
            child: Image.asset('images/7.jpg'),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10.0, 250.0, 10.0, 0.0),
            child: ListView(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                            onPressed: () {
                              var route = MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return mapi();
                              });
                              Navigator.of(context).push(route);
                            },
                            child: Column(children: <Widget>[
                              Text(
                                'Set Destination',
                                style: TextStyle(fontSize: 27.0),
                              ),
                              Text('')
                            ],)),
                      ],
                    )),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FlatButton(
                          onPressed: null,
                          child: FlatButton(
                              onPressed: null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'My Trips',
                                    style: homtyle(),
                                  ),
                                  Text(
                                    'Set your reviews',
                                    style: homytyle(),
                                  )
                                ],
                              ))),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FlatButton(
                          onPressed: null,
                          child: FlatButton(
                              onPressed: null,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Community',
                                    style: homtyle(),
                                  ),
                                  Text(
                                    'Set your reviews',
                                    style: homytyle(),
                                  )
                                ],
                              ))),
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.indigo.shade400,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FlatButton(
                          onPressed: null,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Community',
                                style: homtyle(),
                              ),
                              Text(
                                'Set your reviews',
                                style: homytyle(),
                              )
                            ],
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle homtyle() {
  return TextStyle(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500);
}

TextStyle homytyle() {
  return TextStyle(
      color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w300);
}
