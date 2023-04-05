import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forgetnote/Screens/SignUpScreen.dart';

import '../Utils/GColor.dart';
import '../Utils/GConstants.dart';
import '../Utils/GWidgets.dart';

class WeolcomeScreenTwo extends StatefulWidget {
  const WeolcomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<WeolcomeScreenTwo> createState() => _WeolcomeScreenTwoState();
}

class _WeolcomeScreenTwoState extends State<WeolcomeScreenTwo> {


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
            Container(),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Connect With",style: TextStyle(fontSize: textSizeXLarge,color: Colors.black, fontWeight: FontWeight.bold),),
                  Text("Your Loved Ones",style: TextStyle(fontSize: textSizeXLarge,color: Colors.black,fontWeight: FontWeight.bold),),
                  verticalMargin10,
                  Text("Social networking website tailored specifically towards socializing, remembering and recognizing friends and loved-ones on a ")


                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen()),
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
                              Text("Alredy a member?"),
                              Text("Login",style: TextStyle(color: sh_colorSecodary,fontWeight: FontWeight.bold))
                            ],
                          ),
                          Container()



                        ],
                      ),
                    ),
                  ),
                  verticalMargin50,
                  verticalMargin10,
                  verticalMargin10,


                ],
              ),
            )
          ],
        ),


      ),

    );
  }
}
