import 'package:flutter/material.dart';
import 'package:myapp/drawer/drawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter Feeds"),
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: DrawerPage(),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, positione) {
            return Padding(
              padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
              child: Card(
                child: Column(
                  children: [
                    _cardHeader(),
                    _cardBody(),
                    _divider(),
                    _cardFooter(),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget _cardHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.redAccent,
            // backgroundImage: ExactAssetImage("assets/images/4.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Mohamed Abdel Nasser",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      " @Mohamed",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14.5
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Fri, 12 May 2020 • 14.30")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 22, bottom: 16),
      child: Wrap(
        children: [
          Text(
            "We also talk about the future of work as the robots advance, and we ask whether a retro phone",
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 16,
              height: 1.50,
            ),
          ),
        ],
      ),
    );
  }

  Widget _cardFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.repeat),
                onPressed: () {},
                iconSize: 30,
                color: Colors.orange,
              ),
              Transform.translate(
                offset: Offset(-6, 0),
                child: Text(
                  "25",
                  style: TextStyle(
                    color: Colors.grey.shade600
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            FlatButton(
              onPressed: () {},
              child: Text("SHARE"),
              textColor: Colors.orange,
            ),
            FlatButton(
              onPressed: () {},
              child: Text("OPEN"),
              textColor: Colors.orange,
            ),
          ],
        ),
      ],
    );
  }

  Widget _divider() {
    return Container(
      height: 1,
      color: Colors.grey.shade300,
    );
  }
}
