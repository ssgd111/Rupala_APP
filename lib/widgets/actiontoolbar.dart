import 'package:flutter/material.dart';
import 'package:rupala/screen/download_process.dart';
import 'package:rupala/screen/setwallpaper_process.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';
import 'package:like_button/like_button.dart';
import 'package:http/http.dart' as http;
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'dart:math';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:dio/dio.dart';
import 'package:file_utils/file_utils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';


// ignore: must_be_immutable
class Actiontoolbar extends StatefulWidget {

  String image1;
  String percentage;
  Actiontoolbar({Key key, this.image1,this.percentage}):super(key: key);

  @override
  _ActiontoolbarState createState() => _ActiontoolbarState();
}

class _ActiontoolbarState extends State<Actiontoolbar> {


  int location = WallpaperManager.HOME_SCREEN;
  var filepath;
  String shareImage;

  @override
  Widget build(BuildContext context) {

    return  Column(
      children:<Widget>[
        LikeButton(
          size:40,
          circleColor:CircleColor(start: Colors.blue, end: Colors.pink),
          bubblesColor: BubblesColor(
            dotPrimaryColor: Colors.lightGreenAccent,
            dotSecondaryColor: Colors.lightBlue,
          ),

          likeCountAnimationType: LikeCountAnimationType.part,
            countPostion: CountPostion.bottom,
          likeBuilder:(bool isLiked){
            return Icon(
              Icons.favorite,
              color: isLiked ? Colors.red : Colors.white,
              size:40,
            );
          },

          likeCount: 0,
          countBuilder: (int count, bool isLiked, String text) {
            var color = isLiked ? Colors.white : Colors.white;
            Widget result;
              result = Text(
                text,
                style: TextStyle(color: color.withOpacity(1.0),fontSize: 20),
              );
            return result;
          },
        ),

        SizedBox(
          height:MediaQuery.of(context).size.height/25,
        ),

        GestureDetector(
           onTap:() async{
             var status = await Permission.storage.status;
             if(status.isGranted){
               Navigator.of(context).push(
                 PageRouteBuilder(
                   opaque: false, // set to false
                   pageBuilder: (_, __, ___) => DownloadProcess(dImage: widget.image1,),
                 ),
               );
              // Navigator.push(context,MaterialPageRoute(builder:(context)=>DownloadProcess(dImage:widget.image1,)));
             }
             else
             {
               await Permission.storage.request();
               }
              },
            child:Icon(Icons.file_download, color:Colors.white.withOpacity(1.0), size:40,),
        ),

         SizedBox(
           height:MediaQuery.of(context).size.height/25,
         ),

         GestureDetector(
          onTap:()async{
            /*var response = await http.get(widget.image1);
            filepath = await ImagePickerSaver.saveFile( fileData: response.bodyBytes);
            shareImage = filepath;
           final ByteData bytes = await rootBundle.load(shareImage);
            await Share.file('esys image', 'ssgd.png', bytes.buffer.asUint8List(),'image/png', text:"Jsn");*/
            final ByteData bytes = await rootBundle.load('assets/Books.png');
            await Share.file('esys image', 'esys.png', bytes.buffer.asUint8List(),'image/png', text: '');
          },
            child:Icon(Icons.share,color:Colors.white.withOpacity(1.0),size:30,),
        ),

        SizedBox(
          height:MediaQuery.of(context).size.height/25,
        ),

        GestureDetector(
          onTap:(){
            Navigator.of(context).push(
              PageRouteBuilder(
                opaque: false, // set to false
                pageBuilder: (_, __, ___) => setWallpaper(dImage: widget.image1,),
              ),
            );
            //Navigator.push(context,MaterialPageRoute(builder: (context)=>setWallpaper(dImage: widget.image1,)));
           },
          child:Icon(Icons.image,
            color:Colors.white.withOpacity(1.0),
            size: 40,),
        ),
      ],
    );
  }



}
