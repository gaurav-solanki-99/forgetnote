import 'package:flutter/material.dart';
import 'package:forgetnote/Screens/SignUpScreen.dart';
import 'package:forgetnote/Utils/GConstants.dart';
import 'package:forgetnote/Utils/GWidgets.dart';

import '../Utils/GColor.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
   var selectedTabIndex=0;


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

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
                    Text("Followed by +15 others"),
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
    var exploreFriendList= ListView.builder(
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
                    Text("Followed by +15 others"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Follow",style: TextStyle(color: Colors.black),),
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
    var allFriendList= ListView.builder(
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Unfollow",style: TextStyle(color: Colors.black),),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                    ),
                    SizedBox(width: 5,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text("Block",style: TextStyle(color: Colors.black),),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20))

                      ),
                    ),

                  ],
                )

              ],
            ),
          );
        });


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
                    Text("Friends", style: TextStyle(fontSize: textSizeLarge2),)
                  ],
                ),
                Icon(Icons.filter_alt_off_outlined),

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
                      child: Text("Request(03)",style: TextStyle(
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
                        child: Text("Explore(03)",style: TextStyle(fontSize: textSizeSMedium,
                          color:  selectedTabIndex==1?Colors.white:Colors.black,
                        ),))),
                SizedBox(width: 5,),

                InkWell(
                    onTap: (){
                      setState(() {
                        selectedTabIndex=2;
                      });
                    },
                    child: Container(
                        decoration: selectedTabIndex==2?tabselectedDecoration:null,
                        padding: EdgeInsets.all(10),
                        child: Text("All Friends(10)",style: TextStyle(fontSize: textSizeSMedium,
                          color:  selectedTabIndex==2?Colors.white:Colors.black,),))),

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
            selectedTabIndex==2? allFriendList:Container(),






          ],
        )


      ),

    );
  }
}
