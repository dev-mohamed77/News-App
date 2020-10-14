import 'package:flutter/material.dart';
import 'package:myapp/model/drawer_pages_model.dart';
import 'package:myapp/screen/facebook_feed_screen.dart';
import 'package:myapp/screen/twitter_feed_screen.dart';
import 'package:myapp/tab_bar_pages/favorated.dart';
import 'package:myapp/tab_bar_pages/populer.dart';
import 'package:myapp/screen/home_screen.dart';
import 'package:myapp/screen/instagram_feed_screen.dart';
class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  List<DrawerPagesModel> drawerpages = [
    DrawerPagesModel("WHAT IS NEW", HomeScreen()),
    DrawerPagesModel("POPULAR", Populer()),
    DrawerPagesModel("FAFORATE", Favorated()),
    DrawerPagesModel("Twitter Feeds", TwitterFeed()),
    DrawerPagesModel("Facebook Feeds", FacebookFeed()),
    DrawerPagesModel("Instagram Feeds", InstagramFeed())
  ];
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 100 ,left: 16),
        child: ListView.builder(
            itemCount: drawerpages.length,
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: ListTile(
                    title: Text(
                      drawerpages[position].drawerName,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 18,
                      ),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Colors.grey.shade600,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              drawerpages[position].drawerDynamic));
                    },),
              );
            }),
      ),
    );
  }
}
