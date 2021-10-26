// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class LayoutListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout ListView'),
      ),
      body: MyListViewCard(),
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
          title: Text('Home'),
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

class MyListViewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        Card(
          child: ListTile(
            onTap: () {
              print("Klik Github");
            },
            title: Text('My Github'),
            subtitle: Text('Github Homepage'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/46585919?v=4'),
            ),
            trailing: Icon(Icons.bookmark_outline),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Alex Suprun'),
            subtitle: Text('Photo of Alex'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80'),
            ),
            trailing: Icon(Icons.bookmark_outline),
          ),
        )
      ],
    );
  }
}
