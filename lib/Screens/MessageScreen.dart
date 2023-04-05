import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forgetnote/Screens/NewMessageScreen.dart';

import 'package:forgetnote/Utils/GConstants.dart';
import 'package:forgetnote/Utils/GWidgets.dart';

import '../Utils/GColor.dart';
import '../Utils/GImages.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  var selectedTabIndex=0;
  var split_Selected_Profile_List=[];




  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    const TWO_PI = 3.14 * 2;
    final size = 50.0;



    var requestFriendList= ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: spacing_standard_new),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.symmetric(vertical: 15,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Simba Talks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: textSizeSmall),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("4 new message",style: TextStyle(fontWeight: FontWeight.bold),),
                       SizedBox(width: 5,),
                        Text("2m"),

                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Accept",style: TextStyle(color: Colors.black),),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                    ),
                    Container(

                      child: Icon(Icons.cancel_outlined,color: Colors.black,),
                      margin: EdgeInsets.only(left: 10),
                    )
                  ],
                )

              ],
            ),
          );
        });

    var newSplitList =  Container(
      height: 100,
      

      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return index==0?Container(
              margin: EdgeInsets.only(left: 15),
              width: 70,
              height: 70,
              child: Image.asset(ic_addcircular),
            ):

                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: InkWell(
                    onTap: (){



                      if(split_Selected_Profile_List.contains(index))
                        {
                          setState(() {
                            split_Selected_Profile_List.remove(index);
                          });
                        }
                      else{
                        setState(() {
                          split_Selected_Profile_List.add(index);
                        });
                      }
                      print(">>>>>>>>>>>>>>>>>>"+split_Selected_Profile_List.toString());

                    },
                    child: Stack(
                      children: [
                             Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          fit: BoxFit.cover
                      ),
                    ),
                ),
                        Visibility(
                          visible: split_Selected_Profile_List.contains(index),
                          child: Container(
                            height: 20,
                            width: 20,
                            margin: EdgeInsets.only(left: 65),
                            child: Icon(Icons.check_circle,color: sh_colorSecodary,),
                          ),
                        )
                      ],
                    ),
                  ),
                );

          }),
    );



    var exploreFriendList=  Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("New Split",style: TextStyle(fontWeight: FontWeight.bold,fontSize: textSizeMedium),),



          Icon(Icons.search)
        ],),

        




        newSplitList,

        split_Selected_Profile_List.isNotEmpty?
                      InkWell(
          onTap: (){

          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Center(child: Text("Add Contributors",style: TextStyle(color: Colors.white),)),
            width: width,
            decoration: BoxDecoration(
                color: sh_colorSecodary,
                borderRadius: BorderRadius.all(Radius.circular(25))
            ),


          ),
        ):Container(),




         ListView.builder(
                  scrollDirection: Axis.vertical,
              itemCount: 3,
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: spacing_standard_new),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
           return Container(
            margin: EdgeInsets.symmetric(vertical: 15,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Simba Talks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: textSizeSMedium),),
                        SizedBox(height: 10,),
                        Text("Total Payment: Rs 4000"),
                        SizedBox(height: 10,),





                        Container(

                          child: Stack(
                            children: [

                              Container(
                                margin: EdgeInsets.only(left: 30),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(

                                      image: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),

                                      fit: BoxFit.cover

                                  ),

                                ),

                              ),

                              Container(
                                margin: EdgeInsets.only(left: 15),
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    TweenAnimationBuilder(
                        tween: Tween(begin: 0.0, end: 1.0),
                        duration: Duration(seconds: 4),
                        builder: (context, value, child) {
                          // percentage to show in Center Text
                          int percentage = (value * 100).ceil();
                          return Container(
                            width: size,
                            height: size,
                            child: Stack(
                              children: [
                                ShaderMask(
                                  shaderCallback: (rect) {
                                    return SweepGradient(
                                        startAngle: 0.0,
                                        endAngle: TWO_PI,
                                        stops: [value, value], // value from Tween Animation Builder
                                        // 0.0 , 0.5 , 0.5 , 1.0
                                        center: Alignment.center,

                                        colors: [Colors.blue, Colors.transparent]).createShader(rect);
                                  },
                                  child: Container(
                                    width: size,
                                    height: size,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(image: Image.asset("images/dot.png").image),
                                        color: Colors.white),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    width: size - 5,
                                    height: size - 5,
                                    decoration: BoxDecoration(
                                        color: Colors.white, shape: BoxShape.circle),
                                    child: Center(
                                        child: Text(
                                          "$percentage",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          );
                        })

                  ],
                ),
                verticalMargin15,
                Container(
                  height: 2,
                  color: Colors.black12,
                )
              ],
            ),
          );
        })
      ],
    );


    var tabselectedDecoration=BoxDecoration(
        color: sh_colorSecodary,
        borderRadius: BorderRadius.circular(15)
    );



    return Scaffold(
      body:

      Container(

          color: sh_colorPrimary,
          padding: EdgeInsets.symmetric(horizontal: 25.0),

          child: Column(
            children: [
              Container(height: 100,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text("Message", style: TextStyle(fontSize: textSizeLarge2),)
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NewMessageScreen()));
                      },
                        child: Icon(Icons.filter_alt_off_outlined)),

                  ],

                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        selectedTabIndex=0;
                      });
                    },
                    child: Container(
                        decoration: selectedTabIndex==0?tabselectedDecoration:null,
                        padding: EdgeInsets.all(10),
                        child: Text("Direct Message(03)",style: TextStyle(
                            color:  selectedTabIndex==0?Colors.white:Colors.black,
                            fontSize: textSizeSMedium),)

                    ),
                  ),
                  SizedBox(width: 5,),
                  InkWell(
                      onTap: (){
                        setState(() {
                          selectedTabIndex=1;
                        });
                      },
                      child: Container(
                          decoration: selectedTabIndex==1?tabselectedDecoration:null,
                          padding: EdgeInsets.all(10),
                          child: Text("Split the Bill(03)",style: TextStyle(fontSize: textSizeSMedium,
                            color:  selectedTabIndex==1?Colors.white:Colors.black,
                          ),))),




                ],
              ),
              verticalMargin15,
              TextField(
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: 'Search',
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: sh_colorSecodary, width: 0.5)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.transparent, style: BorderStyle.none, width: 0))),

              ),

              selectedTabIndex==0? requestFriendList:Container(),
              selectedTabIndex==1? exploreFriendList:Container(),





            ],
          )


      ),

    );
  }
}
