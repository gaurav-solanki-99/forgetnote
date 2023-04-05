import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/GColor.dart';
import '../Utils/GConstants.dart';
import '../Utils/GWidgets.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({Key? key}) : super(key: key);

  @override
  State<NewMessageScreen> createState() => _NewMessageScreenState();
}

class _NewMessageScreenState extends State<NewMessageScreen> {

   var listSelectedUser = [];

  @override
  Widget build(BuildContext context) {
     var height= MediaQuery.of(context).size.height;
    var newMessageUserList= ListView.builder(
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(width: 15,),
                    Text("Simba Talks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: textSizeMedium),),
                  ],
                ),



                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [


                    InkWell(

                      onTap: (){
                        setState(() {

                           if(listSelectedUser.contains(index))
                             {
                               listSelectedUser.remove(index);
                             }
                           else
                             {
                               listSelectedUser.add(index);
                             }
                        });
                      },
                      child: Container(

                        child:

                        listSelectedUser.contains(index)?
                             Icon(Icons.check_circle,color: sh_colorSecodary,):Icon(Icons.circle_outlined,color: Colors.black,),
                        margin: EdgeInsets.only(left: 10),
                      ),
                    )
                  ],
                )

              ],
            ),
          );
        });
    return Scaffold(
      body:  SingleChildScrollView(
         child:  Container(
           color: sh_colorPrimary,
           height: height,

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
                         Text("New Message", style: TextStyle(fontSize: textSizeLarge2),)
                       ],
                     ),
                     InkWell(child: Icon(Icons.filter_alt_off_outlined)),

                   ],

                 ),

               ),
               verticalMargin15,
              TextField(
                 autocorrect: true,
                 decoration: InputDecoration(
                     hintText: 'Search',
                     focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: sh_colorSecodary, width: 0.5)),
                     enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: sh_colorSecodary, style: BorderStyle.none, width: 0))),

               ),
               verticalMargin15,
               newMessageUserList
             ],
           ),
         ),
      ),
    );
  }
}
