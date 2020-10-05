import 'package:flutter/material.dart';

class MyQr extends StatefulWidget {
  @override
  _MyQrState createState() => _MyQrState();
}

class _MyQrState extends State<MyQr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My QR"),
      ),
      body:Column(
        children:<Widget>[
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height/3,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:<Widget>[

                Container(
                  width:MediaQuery.of(context).size.width/2,
                  height:MediaQuery.of(context).size.height/4,
                  child:Image.asset("assets/QR2.png",fit:BoxFit.cover,),
                ),

                Container(
                  width:MediaQuery.of(context).size.width/2.5,
                  height:MediaQuery.of(context).size.height/4,
                  child:Image.asset("assets/p11.jpg",fit:BoxFit.cover,),
                ),


              ],
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/30,
          ),

          Padding(
              padding:EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right: MediaQuery.of(context).size.width/20),
            child:Row(
              children:<Widget>[
                Icon(Icons.assignment_ind,size: 30,),
                SizedBox(width: MediaQuery.of(context).size.width/30,),
                Text("5555",style: TextStyle(fontSize: 25),),
              ],
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/30,
          ),

          Padding(
            padding:EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right: MediaQuery.of(context).size.width/20),
            child:Row(
              children:<Widget>[
                Icon(Icons.person,size: 30,),
                SizedBox(width: MediaQuery.of(context).size.width/30,),

                Expanded(child:Text("Shree Ghanshyam Maharaj",style: TextStyle(fontSize: 25),), )

              ],
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/30,
          ),


          Padding(
            padding:EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right: MediaQuery.of(context).size.width/20),
            child:Row(
              children:<Widget>[
                Icon(Icons.phone_android_rounded,size: 30,),
                SizedBox(width: MediaQuery.of(context).size.width/30,),
                Text("81286 55555",style: TextStyle(fontSize: 25),),
              ],
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/30,
          ),


          Padding(
            padding:EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right: MediaQuery.of(context).size.width/20),
            child:Row(
              children:<Widget>[
                Icon(Icons.location_on,size: 30,),
                SizedBox(width: MediaQuery.of(context).size.width/30,),
                Text("SSGD",style: TextStyle(fontSize: 25),),
              ],
            ),
          ),












        ],
      ),
    );
  }
}
