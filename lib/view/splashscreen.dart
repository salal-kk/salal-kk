// ignore_for_file: prefer_const_constructors

import 'package:company/view/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:splashscreen/splashscreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.red,
      seconds: 6,
      title: const Text(
        "Company Name And Logo",
        textAlign: TextAlign.center,
      ),
      navigateAfterSeconds: Homescreen(),
    );
  }
}
