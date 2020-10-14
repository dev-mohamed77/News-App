import 'package:flutter/material.dart';
import 'package:myapp/model/page_model.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {

  List <PageModel> pages = List<PageModel>();

  void _addPages(){
    pages.add(PageModel("Welcome", "Making Friends is Easy as Waving Your Hand Back and Forth in Easy Step .", Icons.ac_unit, "assets/images/coffe.jpg"));
    pages.add(PageModel("Willdone", "Welcome! We hope you’ll always feel free to speak up, share your thoughts and challenge us.", Icons.important_devices, "assets/images/coffe.jpg"));
    pages.add(PageModel("Congratulations", "Congratulations and welcome aboard. We hand-picked you because we know you’ll help us rise to the next level.", Icons.landscape, "assets/images/coffe.jpg"));
    pages.add(PageModel("Thank you for entering !", "Thank you so much for accepting the offer to join our team. We hope you'll feel right at home with us at my App.", Icons.invert_colors, "assets/images/coffe.jpg"));

  }

  @override
  Widget build(BuildContext context) {
    _addPages();
    return Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: ExactAssetImage("assets/images/coffe.jpg"),
                        fit: BoxFit.cover,
                      )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.translate(
                          offset: Offset(0, -115),
                          child: Icon(
                            pages[index].icon,
                            color: Colors.white,
                            size: 140,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            pages[index].title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, right: 50 , bottom: 70),
                          child: Text(
                            pages[index].description,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            Transform.translate(
              offset: Offset(0, 120),
              child: Align(
                alignment: Alignment.center,
                child: Text("data")
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                      color: Colors.red.shade800,
                      textColor: Colors.white,
                      child: Text("GET START"),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => HomeScreen()),);
                      },),
                ),
              ),
            )
          ],
        ),
    );
  }
}