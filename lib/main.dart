// ignore_for_file: prefer_const_constructors

import 'package:company/view/homescreen.dart';
import 'package:company/view/profile.dart';
import 'package:company/view/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Profile(),
    debugShowCheckedModeBanner: false,);
  }
}
