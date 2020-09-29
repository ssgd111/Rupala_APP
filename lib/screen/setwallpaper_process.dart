import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:math';
import 'package:file_utils/file_utils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:toast/toast.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

class setWallpaper extends StatefulWidget {

  String dImage;
  double value;
  setWallpaper({Key key,this.dImage,this.value}):super(key:key);

  @override
  _setWallpaperState createState() => _setWallpaperState();
}

class _setWallpaperState extends State<setWallpaper> {

  static final Random random = Random();
  bool downloading = false;
  var progressString = "";
  double _percent;
  int location = WallpaperManager.HOME_SCREEN;
  var randid;
  String dirloc;
  Future<String> result;
  var _percent2;


  @override

  void initState(){
    super.initState();
    downloadFile();
  }

  Future<String> wallPaper()async{
    var result1 = await WallpaperManager.setWallpaperFromFile(dirloc +  randid.toString() + ".jpg",location);
    return result1;
  }

  Future<void> downloadFile() async {
    Dio dio = Dio();
    String image = widget.dImage;
    try {
      var dir = await getExternalStorageDirectory();
      dirloc = "";
      dirloc = "/sdcard/Rupala1/Wallpaper/";  //Folder inside the Folder
      FileUtils.mkdir([dirloc]);
        randid = random.nextInt(10000000);
      dio.download(image,dirloc + randid.toString() + ".jpg",
          onReceiveProgress: (rec,total){
            setState((){
              downloading = true;
              _percent = (rec/total)*100;
              _percent2 = _percent/100;
              print("$_percent");
              progressString = ((rec / total) * 100).toStringAsFixed(0) + "%";

              if(_percent == 100)
               {
                 result = wallPaper();
                    Navigator.pop(context);
               }
              }
             );
            }
           );
      }
    catch(e){
      print(e);
    }
    setState((){
          downloading = false;
          progressString = "Completed";


      }
    );
    print("Download completed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black12.withOpacity(0.5),
      body: Center(
        child: downloading ?Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width/1.2,
              child:LinearProgressIndicator(
                minHeight: 5,
                valueColor:AlwaysStoppedAnimation<Color>(Colors.red),
                value:_percent2,
              ),
            ),
            Text(
              "SetWallpaper:$progressString",style:TextStyle(color:Colors.white,),
            )
          ],
        )
            : Text("Set Wallpaper"),
      ),
    );
  }
}
