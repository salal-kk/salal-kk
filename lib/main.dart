

import 'package:company/view/splashsceen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splashscreen1(),
    debugShowCheckedModeBanner: false,);
  }
}
