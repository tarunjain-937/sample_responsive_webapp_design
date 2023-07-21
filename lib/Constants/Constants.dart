/// Constants.dart is having all the repeating values and widgets
/// used in our WebApp. {Documentation section}.

import 'package:flutter/material.dart';

var myDefaultBackground=Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
  title: Text("Responsive webApp"),
);

var myDrawer=Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const[
      DrawerHeader(child: Icon(Icons.account_circle)),
      ListTile(leading: Icon(Icons.person), title: Text("Profile"),),
      ListTile(leading: Icon(Icons.home), title: Text("Dashboard"),),
      ListTile(leading: Icon(Icons.chat), title: Text("Message"),),
      ListTile(leading: Icon(Icons.star), title: Text("Starred Message"),),
      ListTile(leading: Icon(Icons.settings), title: Text("Settings"),),
      ListTile(leading: Icon(Icons.logout), title: Text("Logout"),),
    ],
  ),
);