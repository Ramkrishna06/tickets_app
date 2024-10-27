import 'package:flutter/material.dart';

import 'Base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
  // Testcase test = new Testcase(x: 4, y: 7);
  // print(test.x);
  //
  // var test1 = test.copywith(x: 32);
  // print(test1.y);
}

// class Testcase {
//   int x;
//   int y;
//
//   Testcase({required this.x, required this.y});
//
//   Testcase copywith({int? x, int? y}) {
//     return Testcase(x: x ?? this.x, y: y ?? this.y);
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
