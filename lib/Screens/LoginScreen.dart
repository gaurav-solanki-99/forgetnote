
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/GColor.dart';
import '../Utils/GConstants.dart';
import '../Utils/GWidgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  Text("Login to continue"),
                  verticalMargin15,
                  verticalMargin15,

                  Column(
                    children: [
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
                          hintText: 'Password',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                        )
                      ),
                      verticalMargin15,
                      verticalMargin15,
                      Align(
                        alignment: Alignment.topRight,
                          child: Text("Forgot Password?",style: TextStyle(decoration: TextDecoration.underline),)),
                      verticalMargin10,
                      verticalMargin50,
                      verticalMargin10,
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
                              width: width,
                              decoration: BoxDecoration(
                                  color: sh_colorSecodary,
                                  borderRadius: BorderRadius.all(Radius.circular(25))
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
                                          child: Text("or login with")),
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
                                        Text("New here?"),
                                        Text("Signup",style: TextStyle(color: sh_colorSecodary,fontWeight: FontWeight.bold))
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
