import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatIsNew extends StatefulWidget {
  @override
  _WhatIsNewState createState() => _WhatIsNewState();
}

class _WhatIsNewState extends State<WhatIsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("assets/images/4.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55, right: 40),
                    child: Text(
                      "How Terries & Royals Catecrashed Final",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34, right: 34),
                    child: Text(
                      "Your skills and talents will be a great addition to our project",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Top Stories",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700),
                    // textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      child: Column(
                    children: [
                      _drowerSingleRow(),
                      Divider(),
                      _drowerSingleRow(),
                      Divider(),
                      _drowerSingleRow()
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 22, bottom: 5),
                  child: Text(
                    "Recent Updates",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  ),
                ),
                _drowerRecentUpdateCard(Colors.red, "Sports"),
                _drowerRecentUpdateCard(Colors.green, "LifStyle"),
                SizedBox(height: 25,)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drowerRecentUpdateCard(Color color, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage("assets/images/4.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13, left: 18, bottom: 8),
              width: 70,
              height: 16,
              child: Text(
                title,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 10),
              child: Text(
                "Vettle Is Ferrari Number One - Hamilton",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.timer, size: 16, color: Colors.grey),
                  Text(
                    "15",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _drowerSingleRow() {
    return Row(
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
    );
  }
}
