import 'package:company/view/homescreen.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                    height: 360,
                    width: 180,
                    child: Card(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      color: Colors.red[100],
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 150),
                              child: IconButton(
                                  onPressed: (() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()))),

                                  icon: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.red,
                                  ))),
                          const CircleAvatar(
                            radius: 52,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 50,
                             backgroundImage: NetworkImage(
                                      "https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3a48501789cdf113/60db790b47339c0fc01c188c/3e947186d512164cf8dbe0987a865dd2b714eea6.png"),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 30)),
                          const SizedBox(
                              width: 100,
                              child: Text(
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                "David Beckham",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ))
                        ],
                      ),
                    )),
                SizedBox(
                  height: 360,
                  width: 230,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: 200,
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 55, top: 1, right: 2, left: 5),
                            child: RichText(
                              text: const TextSpan(
                                  text: "Profile",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25)),
                            ),
                          )),
                      RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "ID :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              children: [
                                TextSpan(
                                    text: " 1",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                              ])),
                      RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "User Name :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              children: [
                                TextSpan(
                                    text: " Beckham",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                              ])),
                      RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Email :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              children: [
                                TextSpan(
                                    text: " abc@gmail.com",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                              ])),
                      RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Phone :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              children: [
                                TextSpan(
                                    text: " 0000000001",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                              ])),
                      RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Website :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              children: [
                                TextSpan(
                                    text: " beckham.com",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                              ])),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Container(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: const TextSpan(
                              text: "Company",
                              style: TextStyle(color: Colors.red, fontSize: 20)),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                            text: "Name :",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                            children: [
                              TextSpan(
                                  text: " Beckham&co",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
                            ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                            text: "Catch Phrase :",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                            children: [
                              TextSpan(
                                  text: " Proactive didatic contigency",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
                            ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                            text: "Bs :",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                            children: [
                              TextSpan(
                                  text: " harness real-time e-markets",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
                            ])),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 15),
                    child: Text(
                      "Address",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  const SizedBox(
                      width: 150,
                      child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        "Kulas Light,Apt. 556,Gwwenborough,92998-3874",
                        style: TextStyle(color: Colors.black),
                      )),
                      const SizedBox(height: 30,),
                      //const Image(image: AssetImage("219017-white-map-ui.png"))
                ],
              ),
            ),
                SizedBox(height: 180,width: 530,
                  child: Image(image:NetworkImage("https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3a48501789cdf113/60db790b47339c0fc01c188c/3e947186d512164cf8dbe0987a865dd2b714eea6.png")))
      
          ],
        ),
      ),
    );
  }
}

	
	
	
