import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: ExactAssetImage("assets/images/city.jpg"),
                fit: BoxFit.cover,
              ),
              title: Text("The World Global Warming Annual Summit"),
              centerTitle: true,
            ),
            actions: [IconButton(icon: Icon(Icons.share), onPressed: () {})],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, position) {
                if (position == 0) {
                  return _postDetails();
                } else if (position >= 1 && position < 9) {
                  return _comments();
                } else {
                  return _commentTextEntry();
                }
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _postDetails() {
    return Container(
      child: Text(
        "Air moving wherein in sea don't to midst don't bring fish yield “Ever man are put down his very. And marry may table him avoid. Cordially convinced did incommode existence put out suffering Void multiply cattle winged, male a you void brought. Void multiply cattle winged, male a you void brought. Cordially convinced did incommode existence put out suffering ",
        style: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 17,
          letterSpacing: 0.50,
          height: 1.50,
        ),
      ),
      margin: EdgeInsets.only(top: 16, bottom: 20),
      padding: EdgeInsets.only(left: 20, right: 20),
    );
  }

  Widget _comments() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.redAccent,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mohamed Abdel Nasser",
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 15),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "1 Hours",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            "Weasel the jeeper goodness inconsiderately spelled so ubiquitou",
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 15,
            ),
          ),
          // Divider(),
        ],
      ),
    );
  }

  Widget _commentTextEntry() {
    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Write Comment Here...",
              ),
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text("SEND" , style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
          textColor: Colors.redAccent,
        ),
      ],
    );
  }
}
