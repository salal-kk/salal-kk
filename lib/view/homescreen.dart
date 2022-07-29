import 'package:company/model/model.dart';
import 'package:company/view/profiledata.dart';

import 'package:flutter/material.dart';

import '../controller/apicall.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<EmployeeData>> futureEmployeeData;
  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    futureEmployeeData = fetchEmployeeData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Color.fromARGB(209, 216, 81, 57),
          )
        ),
        
        body:
        FutureBuilder<List<EmployeeData>>(
        future: futureEmployeeData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
         GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              crossAxisCount: 2,
              childAspectRatio: 1.4/2
            ),
            itemCount: 5,
            itemBuilder: ((context, index) 
            {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Profile()));
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.red[600],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage:
                                  NetworkImage("https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt3a48501789cdf113/60db790b47339c0fc01c188c/3e947186d512164cf8dbe0987a865dd2b714eea6.png")
                            ),
                          ),
                           Padding(padding: EdgeInsets.only(bottom: 10)),
                          SizedBox(
                              width: 140,
                              child: Text(
                                "salal",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                
                                style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    )
                    ),
              );
            }
            )
             );
          }
          else {
            return  Center(child: CircularProgressIndicator());
          }
        }
            )
            
            );
  }
}