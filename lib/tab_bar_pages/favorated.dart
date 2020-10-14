import 'dart:math';

import 'package:flutter/material.dart';

class Favorated extends StatefulWidget {
  @override
  _FavoratedState createState() => _FavoratedState();
}

List<Color> colorList = [
  Colors.red,
  Colors.blue,
  Colors.orange,
  Colors.purple,
  Colors.brown,
  Colors.teal
];

Random random = Random();

Color randomColor() {
  return colorList[random.nextInt(colorList.length)];
}

class _FavoratedState extends State<Favorated> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, position) {
        return _favorateCard();
      },
    );
  }

  Widget _favorateCard() {
    return Card(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _authorRow(),
            SizedBox(height: 8,),
            _newItemRow(),
          ],
        ),
      ),
    );
  }

  Widget _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: ExactAssetImage("assets/images/4.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mohamed Abdel Nasser",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "15 min .",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Life Style",
                        style: TextStyle(color: randomColor()),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
      ],
    );
  }

  Widget _newItemRow() {
    return Row(
      children: [
        Container(
          width: 140,
          height: 140,
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: ExactAssetImage("assets/images/4.jpg"),
                fit: BoxFit.contain),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text("Tech Tent: Old Phones And Safe Social",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 8),
              Text(
                  "We also talk about the future of work as the robots advance, and we ask whether a retro phone",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    height: 1.3
                  ),
                  ),
            ],
          ),
        )
      ],
    );
  }

}
