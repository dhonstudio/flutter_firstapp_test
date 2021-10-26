// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class LayoutListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Card & ListTile'),
      ),
      body: MyListViewCard(),
    );
  }
}

class MyListViewListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        ListTile(
          title: Text('Home'),
          subtitle: Text('This is Homepage'),
          leading: Icon(Icons.home),
          trailing: Icon(Icons.bookmark_outline),
        ),
        ListTile(
          title: Text('Contact'),
          subtitle: Text('This is your contact'),
          leading: Icon(Icons.ballot),
          trailing: Icon(Icons.bookmark_outline),
        ),
        ListTile(
          title: Text('Account'),
          subtitle: Text('Manage account here'),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.bookmark_outline),
        ),
        ListTile(
          title: Text('Recent'),
          subtitle: Text('Access your recent files'),
          leading: Icon(Icons.alarm),
          trailing: Icon(Icons.bookmark_outline),
        ),
        ListTile(
          title: Text('Email'),
          subtitle: Text('Send me an email'),
          leading: Icon(Icons.email),
          trailing: Icon(Icons.bookmark_outline),
        ),
      ],
    ));
  }
}

class MyListViewCard extends StatelessWidget {
  var Title = ['My Github', 'Alex Suprun', 'Nicolas Horn'];
  var Subtitle = [
    'Github homepage',
    'Photo of Alex Suprun',
    'Photo of Nicolas Horn'
  ];
  var Trailing = Icon(Icons.bookmark_outline);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(8.0), children: <Widget>[
      Card(
        child: ListTile(
          onTap: () {
            print("Anda mengklik My Github");
          },
          title: Text(Title[0]),
          subtitle: Text(Subtitle[0]),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/18276695?v=4'),
          ),
          trailing: Trailing,
        ),
      ),
      Card(
        child: ListTile(
          onTap: () {
            print("Anda mengklik Alex Suprun");
          },
          title: Text(Title[1]),
          subtitle: Text(Subtitle[1]),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde'),
          ),
          trailing: Trailing,
        ),
      ),
      Card(
        child: ListTile(
          onTap: () {
            print("Anda mengklik Nicolas Horn");
          },
          title: Text(Title[2]),
          subtitle: Text(Subtitle[2]),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1527980965255-d3b416303d12'),
          ),
          trailing: Trailing,
        ),
      ),
    ]);
  }
}
