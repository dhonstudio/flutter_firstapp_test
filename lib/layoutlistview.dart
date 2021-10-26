// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LayoutListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout ListView'),
      ),
      body: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ListView(
      padding: EdgeInsets.all(12.0),
      children: <Widget>[
        ListTile(
          title: Text('List 1'),
          subtitle: Text('This is Homepage'),
          leading: Icon(Icons.home),
          trailing: Icon(Icons.bookmark),
        ),
        ListTile(
          title: Text('List 2'),
          subtitle: Text('This is your Contact'),
          leading: Icon(Icons.ballot),
          trailing: Icon(Icons.bookmark_outline),
        ),
        ListTile(
          title: Text('List 3'),
          subtitle: Text('Manage Account here'),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.bookmark_outline),
        ),
        ListTile(
          title: Text('List 4'),
          subtitle: Text('Access your recent file'),
          leading: Icon(Icons.alarm),
          trailing: Icon(Icons.bookmark_outline),
        ),
        ListTile(
          title: Text('List 5'),
          subtitle: Text('Send Email'),
          leading: Icon(Icons.email),
          trailing: Icon(Icons.bookmark_outline),
        ),
      ],
    ));
  }
}
