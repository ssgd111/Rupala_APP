import 'package:flutter/material.dart';
import 'package:rupala/images/images.dart';
import 'package:rupala/widgets/actiontoolbar.dart';
import 'package:rupala/widgets/description.dart';
import 'package:photo_view/photo_view.dart';

class Darshan extends StatefulWidget {
  @override
  _DarshanState createState() => _DarshanState();
}

class _DarshanState extends State<Darshan>  {


  Widget get middleSection => Expanded(child: videoViewer());

  Widget videoViewer(){
    return Container(
      child: PageView.builder(
        controller: PageController(
          initialPage: 0,
          //   viewportFraction:0,
        ),
        onPageChanged:(index) {
          index = index % (Photos.item.length);
        },
        scrollDirection: Axis.vertical,
        itemBuilder:(context, index){
          index = index % (Photos.item.length);
          return photoCard(Photos.item[index]); //Image.asset(item[index],fit: BoxFit.scaleDown,);
        },
      ),
    );
  }

  Widget photoCard(String image){
    return Stack(
      children:<Widget>[
        Container(
          //Image.network(image,fit:Boxfit.cover)
          child:PhotoView(
                     customSize: MediaQuery.of(context).size,
                     imageProvider:NetworkImage(image,),
                     minScale: PhotoViewComputedScale.contained*0.8,
                     maxScale: PhotoViewComputedScale.covered*10,
                     initialScale: PhotoViewComputedScale.covered,
                   ),
                     height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width,),
        Positioned(
          right:MediaQuery.of(context).size.width/40,
          bottom:MediaQuery.of(context).size.height/25,
          child: Container(
            child:Actiontoolbar(image1: image,),
          ),
        ),
        Positioned(
          bottom:MediaQuery.of(context).size.height/25,
          left: MediaQuery.of(context).size.width/20,
          child:Container(
            child:Description(),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body:Stack(
        children: <Widget>[
          Column(
            children:<Widget>[
              middleSection,
            ],
          ),
        ],
      ),
    );
  }

}
