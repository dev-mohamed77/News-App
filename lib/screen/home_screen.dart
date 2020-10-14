import 'package:flutter/material.dart';
import 'package:myapp/drawer/drawer.dart';
import 'package:myapp/tab_bar_pages/favorated.dart';
import 'package:myapp/tab_bar_pages/populer.dart';
import 'package:myapp/tab_bar_pages/what_is_new.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum popUpMenuList { ABOUT, CONTACT, HELP, SETTING }

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Explore"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            popOutMenu(context),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "WHAT'S NEW",
              ),
              Tab(
                text: "POPULER",
              ),
              Tab(
                text: "FAVORATED",
              ),
            ],
          ),
        ),
        drawer: DrawerPage(),
        body: TabBarView(children: <Widget>[
          WhatIsNew(),
          Populer(),
          Favorated(),
        ]),
      ),
    );
  }
}

Widget popOutMenu(BuildContext context) {
  return PopupMenuButton<popUpMenuList>(
    itemBuilder: (context) {
      return [
        PopupMenuItem(
          child: Text("ABOUT"),
          value: popUpMenuList.ABOUT,
        ),
        PopupMenuItem(
          child: Text("CONTACT"),
          value: popUpMenuList.CONTACT,
        ),
        PopupMenuItem(
          child: Text("HELP"),
          value: popUpMenuList.HELP,
        ),
        PopupMenuItem(
          child: Text("SETTING"),
          value: popUpMenuList.SETTING,
        ),
      ];
    },
    icon: Icon(Icons.more_vert),
  );
}
