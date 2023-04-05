import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: ScrollConfiguration(
      behavior: MyBehavior(),
      child: SingleChildScrollView(
        child:ConstrainedBox(
          constraints: BoxConstraints(maxHeight:double.infinity,
              maxWidth:  MediaQuery.of(context).size.width
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StaggeredGridView.countBuilder(
                  staggeredTileBuilder: (index) =>
                      StaggeredTile.fit(1), //cross axis cell count
                  mainAxisSpacing: 8, // vertical spacing between items
                  crossAxisSpacing: 8, // horizontal spacing between items
                  crossAxisCount: 2, // no. of virtual columns in grid
                  itemCount: 60,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildImageCard(index),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

  Widget buildImageCard(int index) => Card(
    color: Colors.white,
    // margin: EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      margin: EdgeInsets.all(4),
      child: ClipRRect(
        // clip the image to a circle
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          )),
    ),
  );
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }





}
