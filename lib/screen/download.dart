import 'package:flutter/material.dart';


class Download extends StatefulWidget {
  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text("Download",style:TextStyle(
          color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body:Column(
        children:<Widget>[

          SizedBox(
            height: MediaQuery.of(context).size.height/13,
           ),

           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              /*Container(
                decoration: BoxDecoration(
              //    color: Colors.white,
                  border:Border.all(
                    width: 5,
                 //   color: Colors.cyan,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height:MediaQuery.of(context).size.height/4.5,
                width:MediaQuery.of(context).size.width/2.5,
                child: Center(
                  child:Icon(Icons.videocam,size: 130,) ,
                ),
              ),*/
              Image.asset("assets/video2.png",height:170,width: 170,),
              /*Container(
                decoration: BoxDecoration(
                //  color: Colors.white,
                  border:Border.all(
                    width: 5,
                  //  color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height:MediaQuery.of(context).size.height/4.5,
                width:MediaQuery.of(context).size.width/2.5,
                child: Center(
                  child:Icon(Icons.audiotrack,size: 130,) ,
                ),
              ),*/
              Image.asset("assets/Audio2.png",height:170,width: 170,),
            ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/28,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Video",style:TextStyle(fontSize: 20),),
              Text("Audio",style:TextStyle(fontSize: 20),),
            ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/23,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              /*Container(
                decoration: BoxDecoration(
                  //color: Colors.white,
                  border:Border.all(
                    width: 5,
                   // color: Colors.deepPurple,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height:MediaQuery.of(context).size.height/4.5,
                width:MediaQuery.of(context).size.width/2.5,
                child: Center(
                  child:Icon(FontAwesome5.hotjar,size: 130,),
                ),
              ),*/
              Image.asset("assets/trending.png",height:170,width: 170,),
              GestureDetector(
                onTap: (){
                },
                child: Image.asset("assets/Gallery.png",height:170,width: 170,),
                /*child: Container(
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    border:Border.all(
                      width: 5,
                   //   color:Colors.amber,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height:MediaQuery.of(context).size.height/4.5,
                  width:MediaQuery.of(context).size.width/2.5,
                  child: Center(
                    child:Icon(Icons.image,size: 140,) ,
                  ),
                ),*/
              ),
            ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/28,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Trending",style:TextStyle(fontSize: 20),),
              Text("Darshan",style:TextStyle(fontSize: 20),),
            ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/23,
          ),


        ],
      ),
    );
  }
}
