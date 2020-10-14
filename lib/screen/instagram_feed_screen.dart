import 'package:flutter/material.dart';
import 'package:myapp/drawer/drawer.dart';

class InstagramFeed extends StatefulWidget {
  @override
  _InstagramFeedState createState() => _InstagramFeedState();
}
  List<int> ids = [];
class _InstagramFeedState extends State<InstagramFeed> {

  @override
  void initState() {
    super.initState();
    ids = [0, 5, 15];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Feed"),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      drawer: DrawerPage(),
      body: ListView.builder(itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
          child: Card(
              child: Column(
            children: [
              _facebookCardHeader(position),
              _facebookCardBody(),
              _facebookHashtags(),
              _facebookCardImages(),
              _facebookCardFooter(),
            ],
          )),
        );
      }),
    );
  }

  Widget _facebookCardHeader(int position) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.redAccent,
                // backgroundImage: ExactAssetImage("assets/images/4.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mohamed Abdel Nasser",
                      style: TextStyle(
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Fri, 12 May 2020 • 14.30",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 14.5),
                    ),
                  ],
                ),
              )
            ],
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              setState(() {
                if(ids.contains(position)){
                  ids.remove(position);
                }else{
                  ids.add(position);
                }
              }
              );
            },
            color: (ids.contains(position))? Colors.red : Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _facebookCardBody() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 8,
        top: 8,
      ),
      child: Wrap(
        children: [
          Text(
            "We also talk about the future of work as the robots .",
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  Widget _facebookHashtags() {
    return Row(
      children: [
        FlatButton(
          onPressed: () {},
          child: Text("#advance"),
          textColor: Colors.orange,
        ),
        FlatButton(
          onPressed: () {},
          child: Text("#retro"),
          textColor: Colors.orange,
        ),
        FlatButton(
          onPressed: () {},
          child: Text("#facebook"),
          textColor: Colors.orange,
        )
      ],
    );
  }

  Widget _facebookCardImages() {
    return Image(
      image: ExactAssetImage("assets/images/4.jpg"),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
    );
  }

  Widget _facebookCardFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(
          onPressed: () {},
          child: Text("10 COMMENTS"),
          textColor: Colors.orange,
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
        )
      ],
    );
  }
  }