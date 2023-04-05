import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forgetnote/Utils/GConstants.dart';

import 'MessageScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
                    child: Column(

                      children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 25,right: 30,top: 40, bottom: 25),
                                  margin: EdgeInsets.only(top: 25),
                                  decoration: BoxDecoration(
                                    color: Colors.amberAccent,
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(90))
                                  ),
                                  child: Column(

                      children: [
                                        Text("Welocme Back,", style: TextStyle(fontSize: textSizeLarge2, fontWeight: FontWeight.bold),),
                                        Text("Michele", style: TextStyle(fontSize: textSizeLarge2, fontWeight: FontWeight.bold),)
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen()));
                              },
                              child: Container(
                                padding: EdgeInsets.only(right: 15),
                                  child: Icon(Icons.message)),
                            )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
