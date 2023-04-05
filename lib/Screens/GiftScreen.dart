import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/GColor.dart';
import '../Utils/GConstants.dart';
import '../Utils/GWidgets.dart';

class GiftMainScreen extends StatefulWidget {
  const GiftMainScreen({Key? key}) : super(key: key);

  @override
  State<GiftMainScreen> createState() => _GiftMainScreenState();
}

class _GiftMainScreenState extends State<GiftMainScreen> {
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: sh_colorPrimary,
          height: height,

          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 100,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text("Gifts", style: TextStyle(fontSize: textSizeLarge2),)
                      ],
                    ),
                    InkWell(child: Icon(Icons.filter_alt_off_outlined)),

                  ],

                ),

              ),
              verticalMargin15,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Whom do you", style: TextStyle(fontSize: textSizeLarge2, fontWeight: FontWeight.bold),),
                  Text("wanna gift today?", style: TextStyle(fontSize: textSizeLarge2, fontWeight: FontWeight.bold),)
                ],
              ),
              verticalMargin15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Giting to?",style: TextStyle(fontSize: textSizeMedium,fontWeight: FontWeight.bold),),
                  Icon(Icons.search)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
