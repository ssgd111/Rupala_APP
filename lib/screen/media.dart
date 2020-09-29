import 'package:flutter/material.dart';



class Media extends StatefulWidget {
  Color c1;
  Color c2;
  Color c3;

  Media({Key key,this.c1,this.c2,this.c3}):super(key:key);


  @override
  _MediaState createState() => _MediaState();
}

class _MediaState extends State<Media> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        //backgroundColor: Colors.black,
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text("Media",style:TextStyle(
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
              GestureDetector(
                onTap: (){
                  //Navigator.push(context,MaterialPageRoute(builder: (context) => SecondRoute()));
                },
                  /*child: Container(
                    decoration: BoxDecoration(
                //      color: Colors.white,
                      border:Border.all(
                        width: 5,
                       // color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                   height:MediaQuery.of(context).size.height/4.5,
                   width:MediaQuery.of(context).size.width/2.5,
                   child: Center(
                    child:Icon(Icons.videocam,size: 130,) ,
                 ),
                ),*/
                child: Image.asset("assets/video2.png",height: 170,width: 170,),
              ),
             /* Container(
                decoration: BoxDecoration(
                 // color: Colors.white,
                  border:Border.all(
                    width: 5,
                   // color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height:MediaQuery.of(context).size.height/4.5,
                width:MediaQuery.of(context).size.width/2.5,

                child: Center(
                  child:Icon(Icons.audiotrack,size: 130,) ,
                ),
              ),*/
              Image.asset("assets/Audio2.png",height: 170,width: 170,),
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
            height:MediaQuery.of(context).size.height/23,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              /*Container(
                decoration: BoxDecoration(
               //   color: Colors.white,
                  border:Border.all(
                    width: 5,
                 //   color: Colors.deepPurple,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height:MediaQuery.of(context).size.height/4.5,
                width:MediaQuery.of(context).size.width/2.5,
                child: Center(
                  child:Icon(Icons.book,size: 130,),
                ),
                ),*/
              Image.asset("assets/Books.png",height: 170,width: 170,),
              /*Container(
                decoration: BoxDecoration(
              //    color: Colors.white,
                  border:Border.all(
                    width: 5,
                //    color: Colors.cyan,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height:MediaQuery.of(context).size.height/4.5,
                width:MediaQuery.of(context).size.width/2.5,
                child: Center(
                  child:Icon(Icons.image,size: 130,) ,
                ),
              ),*/
              Image.asset("assets/Gallery.png",height: 170,width: 170,),
             ],
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/28,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget>[
              Text("Books",style:TextStyle(fontSize: 20,),),
              Text("Gallery",style:TextStyle(fontSize: 20),),
            ],
          ),

          SizedBox(
            height:MediaQuery.of(context).size.height/23,
          ),

        ],
      ),
    );
  }
}
