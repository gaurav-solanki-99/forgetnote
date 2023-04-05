import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forgetnote/Screens/DashboardScreen.dart';

import '../Utils/GColor.dart';
import '../Utils/GConstants.dart';
import '../Utils/GWidgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      body:  Container(
        height: height,
        width: width,
        color: sh_colorPrimary,
        padding: EdgeInsets.symmetric(horizontal: 25.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,


          children: [
            Container(
            ),
            Container(
              child: Icon(Icons.arrow_back_ios),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,


                children: [

                  Text("Hello There!",style: TextStyle(fontSize: textSizeXLarge,color: Colors.black, fontWeight: FontWeight.bold),),
                  verticalMargin10,
                  Text("Signup to continue"),
                  verticalMargin15,
                  verticalMargin15,
                  LinearProgressIndicator(
                    backgroundColor: Colors.cyanAccent,
                    valueColor: new AlwaysStoppedAnimation<Color>(sh_colorSecodary),
                    value: 0.5,


                  ),
                  verticalMargin15,
                  verticalMargin15,


                  Column(
                    children: [
                      TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Full Name',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          )
                      ),
                      verticalMargin10,
                      verticalMargin10,
                      TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Mobile',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          )
                      ),
                      verticalMargin10,
                      verticalMargin10,
                      TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'EmailID',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          )
                      ),
                      verticalMargin10,
                      verticalMargin10,
                      TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye),
                            hintText: 'Set Password',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                          )
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Password should have min 8 characters",)),
                      verticalMargin10,
                      verticalMargin50,
                      verticalMargin10,
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const DashboardScreen()),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Center(child: Text("Continue",style: TextStyle(color: Colors.white),)),
                                width: width,
                                decoration: BoxDecoration(
                                    color: sh_colorSecodary,
                                    borderRadius: BorderRadius.all(Radius.circular(25))
                                ),


                              ),
                            ),
                            verticalMargin10,
                            verticalMargin10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Container(),
                                Center(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: width/4,
                                        height: 2,
                                        color: Colors.black26,
                                      ),

                                      Container(
                                          margin:EdgeInsets.symmetric(horizontal: 15),
                                          child: Text("or signup with")),
                                      Container(
                                        width: width/4,
                                        height: 2,
                                        color: Colors.black26,
                                      ),
                                    ],
                                  ),
                                ),
                                Container()
                              ],

                            ),
                            verticalMargin10,
                            verticalMargin10,
                            Container(
                              width: width,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,

                                      children: [
                                        Text("Joines us before?"),
                                        Text("Login",style: TextStyle(color: sh_colorSecodary,fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                    Container()



                                  ],
                                ),
                              ),
                            ),



                          ],
                        ),
                      )

                    ],

                  ),





                ],
              ),
            ),
            Container()

          ],
        ),


      ),

    );
  }
}
