// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.red),
              onPressed: () {}),
        ),
        body: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .75),
            itemBuilder: (BuildContext context, index) {
              return SizedBox(
                child: Card(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(1, 20, 10, 10),
                          child: CircleAvatar(
                            radius: 78,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 76,
                              backgroundImage: NetworkImage(
                                  "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3a48501789cdf113/60db790b47339c0fc01c188c/3e947186d512164cf8dbe0987a865dd2b714eea6.png"),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 60),
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(1, 10, 1, 1),
                          child: Text("David Beckham",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: 8,
          ),
        ));
  }
}
