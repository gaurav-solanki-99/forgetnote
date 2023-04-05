import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:forgetnote/Utils/GImages.dart';
import 'package:forgetnote/Utils/GWidgets.dart';

import '../Utils/GColor.dart';
import '../Utils/GConstants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var selectedTabIndex=0;


  Widget buildImageCard(int index) => Card(
    color: Colors.white,
    // margin: EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        // clip the image to a circle
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          )),
    ),
  );
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.height;
    var height = MediaQuery.of(context).size.width;
    var myPostList=Container(
        margin: EdgeInsets.only(top: 15),

        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              //make border radius more than 50% of square height & width

              child: Image.asset(
                ic_backgroundevent,
                height: (height*0.5)+10,
                width: width,
                fit:BoxFit.cover, //change image fill type
              ),
            ),
            Container(
              height: (height*0.5)+10,
              width: width,
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
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
                      ),
                      SizedBox(width: 5,),
                      Text("+15 others attending",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Artictics Museum Visit",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("30th July 9:00 am ownwards",style: TextStyle(color: Colors.black26),),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, size: 15, color: Colors.black26,),
                            Text("Artistics Museum",style: TextStyle(color: Colors.black26),)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )



    );
    var myEventList = GridView.builder(

        itemCount: 4,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,


        padding: EdgeInsets.all(spacing_middle),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 9 / 11, crossAxisSpacing: spacing_middle, mainAxisSpacing: spacing_middle),
        itemBuilder: (_, index) {

          return       ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          );
        }
    );
    var tabselectedDecoration=BoxDecoration(
        color: sh_colorSecodary,
        borderRadius: BorderRadius.circular(15)
    );
    return Scaffold(
      body:

      SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25.0),

        child:Column(
          children: [
            Container(
              height: 100,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Icon(Icons.arrow_back_ios),
                      Text("My Profile", style: TextStyle(fontSize: textSizeLarge2),)
                    ],
                  ),
                  InkWell(
                      onTap: (){

                      },
                      child: Icon(Icons.filter_alt_off_outlined)),

                ],

              ),
            ),

            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    width: width*0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Michele Kobe", style: TextStyle(fontSize: textSizeNormal,fontWeight: FontWeight.bold),),
                       verticalMargin10,
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text("03",style: TextStyle(fontSize: textSizeSMedium,fontWeight: FontWeight.bold),),
                                 Text("Flowing",style: TextStyle(fontSize: textSizeSMedium,fontWeight: FontWeight.bold),),
                               ],
                             ),

                             SizedBox(
                               width: 25,
                             ),

                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,

                               children: [
                                 Text("03",style: TextStyle(fontSize: textSizeSMedium,fontWeight: FontWeight.bold),),
                                 Text("Follower",style: TextStyle(fontSize: textSizeSMedium,fontWeight: FontWeight.bold),),
                               ],
                             )
                           ],
                         ),
                        verticalMargin10,
                        InkWell(
                          onTap: (){
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const DashboardScreen()),
                            // );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                            child: Center(child: Text("Edit Profile",style: TextStyle(color: Colors.white),)),

                            decoration: BoxDecoration(
                                color: sh_colorSecodary,
                                borderRadius: BorderRadius.all(Radius.circular(25))
                            ),


                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),

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
                      child: Text("My Posts",style: TextStyle(
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
                        child: Text("My Event",style: TextStyle(fontSize: textSizeSMedium,
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
                        child: Text("My Gallery",style: TextStyle(fontSize: textSizeSMedium,
                          color:  selectedTabIndex==2?Colors.white:Colors.black,),))),

              ],
            ),

            selectedTabIndex==1? myPostList : Container(),

            selectedTabIndex==0?GridView.builder(

          itemCount: 4,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,


          padding: EdgeInsets.all(spacing_middle),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 9 / 11, crossAxisSpacing: spacing_middle, mainAxisSpacing: spacing_middle),
             itemBuilder: (_, index) {

                      return       ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      );
             }
            ):Container(),


        selectedTabIndex==2? StaggeredGridView.countBuilder(

          staggeredTileBuilder: (index) =>
              StaggeredTile.fit(1), //cross axis cell count
          mainAxisSpacing: 8, // vertical spacing between items
          crossAxisSpacing: 8, // horizontal spacing between items
          crossAxisCount: 2, // no. of virtual columns in grid
          itemCount: 60,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) =>buildImageCard(index),
        ):Container()




          ],
        ),
      ),
    );
  }

}
