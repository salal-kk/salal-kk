// ignore_for_file: avoid_unnecessary_containers,prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Container(
                child:
                 SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 2,
                    width: MediaQuery.of(context).size.width * 1.2 / 2,
                    child: Card(
                      color: Colors.red[100],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                      child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 150,),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios),)
                      ),
                        Container(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(1, 20, 10, 10),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 58,
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
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Colors.black)),
                        ),
                      )]),
                    ))),
            Container(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 2,
                width: MediaQuery.of(context).size.width * .8 / 2,
                child: ListView(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 70, top: 12),
                        child: Text("Profile",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black))),
                    ListTile()
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
