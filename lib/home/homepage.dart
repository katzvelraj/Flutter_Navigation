import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'Home-page';
  @override
  Widget build(BuildContext context) {
    final body = Container(
      width: MediaQuery.of(context).size.width,
    );

    final drawer = Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text("Olam Vega"),
            decoration: BoxDecoration(color: Colors.green),
          ),
          ListTile(
            title: Text("Create Lot"),
             leading: Icon(Icons.android),
            onTap: () {
              Navigator.pop(context);
             
            },
          ),
          ListTile(
            title: Text("RMIN"),
            leading: Icon(Icons.android)
          ),
          ListTile(
            title: Text("FGRN"),
            leading: Icon(Icons.android)
          ),
          ListTile(
            title: Text("Lot Management"),
            leading: Icon(Icons.android)
          ),
          ListTile(
            title: Text("Dispatch"),
            leading: Icon(Icons.android)
          )
        ],
      ),
    );

    final appBar = AppBar(
      title: Text("Vega",textAlign: TextAlign.center),
      backgroundColor: Colors.green,
    );

    return Scaffold(body: body, drawer: drawer,appBar: appBar);
  }
}
