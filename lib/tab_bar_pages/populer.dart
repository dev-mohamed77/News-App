import 'package:flutter/material.dart';
import 'package:myapp/screen/article_screen.dart';

class Populer extends StatefulWidget {
  @override
  _PopulerState createState() => _PopulerState();
}

class _PopulerState extends State<Populer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, position) {
        return _drowerSingleRow();
      },
    );
  }

  Widget _drowerSingleRow() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ArticlePage()));
      },
      child: Card(
        child: Row(
          children: [
            Container(
              width: 110,
              height: 100,
              margin: EdgeInsets.only(left: 10, top: 10, bottom: 8),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage("assets/images/4.jpg"),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32, left: 10),
                    child: Text(
                      "The World Global Warming Annual Summit",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Mohamed Abdel Nasser",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 17),
                        child: Row(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Text(
                              "15",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
