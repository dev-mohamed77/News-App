import 'package:flutter/material.dart';
import 'package:myapp/screen/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}










//appBar: AppBar(
//    title: Text("ListView.Builder"),
//    centerTitle: true,
//    backgroundColor: Colors.red,
//    elevation: 0,
//  ),
// body: Container(
//   height: 80,
//   decoration: BoxDecoration(color: Colors.red),
//   child: ListView.builder(
//     scrollDirection: Axis.horizontal,
//     itemCount: myList.length,
//     itemBuilder: (BuildContext context , int index){
//       return Padding(
//         padding: const EdgeInsets.symmetric(vertical: 25 , horizontal: 8),
//         child: Text(myList[index],
//         style: TextStyle(
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//           letterSpacing: 1.5,
//         ),
//     ),
//       );
//     }
//   ),
// ),

// // SnackBar Demo .

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.purple, accentColor: Colors.amber),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Snack Bar ^_^"),
//           centerTitle: true,
//           leading: IconButton(
//             icon: Icon(Icons.menu),
//             onPressed: () {},
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.search),
//               onPressed: () {},
//             )
//           ],
//         ),
//         body: Center(
//           child: Container(child: Builder(builder: (context) {
//             return RaisedButton(
//               child: Text("Snack Bar"),
//               onPressed: () {
//                 Scaffold.of(context).showSnackBar(SnackBar(
//                   content: Text("Snack Bar From Useing Builder Widget"),
//                 ));
//               },
//             );
//           })),
//         ),
//       ),
//     );
//   }
// }

// // class MyBotton extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return RaisedButton(
// //       child: Text("Snack Bar"),
// //         onPressed: (){
// //           Scaffold.of(context).showSnackBar(SnackBar(
// //             content: Text("Snack Bar"),
// //         ));
// //       },
// //     );
// //   }
// // }
