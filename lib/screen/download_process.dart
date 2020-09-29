import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:math';
import 'package:file_utils/file_utils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:toast/toast.dart';

class DownloadProcess extends StatefulWidget {

  String dImage;
  double value;
  DownloadProcess({Key key,this.dImage,this.value}):super(key:key);

  @override
  _DownloadProcessState createState() => _DownloadProcessState();
}

class _DownloadProcessState extends State<DownloadProcess> {

  static final Random random = Random();
  bool downloading = false;
  var progressString = "";
  double _percent;
  double _percent2;


  @override
  void initState(){
    super.initState();
    downloadFile();
  }

  Future<void> downloadFile() async {
    Dio dio = Dio();
    String image = widget.dImage;
    try {
      var dir = await getExternalStorageDirectory();
      String dirloc = "";
        dirloc = "/sdcard/Rupala1/Darshan/";  //Folder inside the Folder
        FileUtils.mkdir([dirloc]);
        var randid = random.nextInt(10000000);
        dio.download(image, dirloc +  randid.toString() + ".jpg",
            onReceiveProgress: (rec,total){
              setState((){
                downloading = true;
                _percent = (rec/total)*100;
                _percent2 = _percent/100;
                print("$_percent");
                progressString = ((rec / total) * 100).toStringAsFixed(0) + "%";
                   if(_percent == 100)
                     {
                       Navigator.pop(context);

                       Toast.show(
                             "Image Saved To Download",
                             context,
                             duration:Toast.LENGTH_LONG,
                             gravity: Toast.BOTTOM,
                             backgroundColor: Colors.black87,
                          );
                     }
                  }
               );
            }
        );
     }catch (e){
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
        child: downloading ? Column(
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
                     "Downloading Image:$progressString",style:TextStyle(color:Colors.white,),
                 )
              ],
            )
            :Text("Downloading"),
      ),
    );
  }
}
