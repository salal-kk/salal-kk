
import 'dart:async';

import 'package:company/view/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen1 extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<Splashscreen1> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Homescreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(6)),
        child:  Center(
          child: Text(
            'Logo with name ',
            style: TextStyle(
                color: Colors.white, fontSize: 30,),
          ),
        )

        //FlutterLogo(size:MediaQuery.of(context).size.height)
        );
  }
}




	
	
	
