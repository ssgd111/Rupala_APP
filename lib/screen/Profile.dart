import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:rupala/screen/myQr.dart';
import 'package:rupala/screen/resetpin.dart';
import 'package:rupala/screen/withdraw.dart';
import 'package:flutter/widgets.dart';
import 'settingpage.dart';
import 'login_request.dart';


class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/30),
            child:GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>SettingPage()));
              },
              child:Icon(Icons.settings,size: 30),
            ),
          ),
        ],
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text("Profile",style:TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: 20,fontWeight:FontWeight.bold),),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/3.5,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child:GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginRequest()));
                },
               child: Container(
                  width: 200,
                  height: 100,
                  child:Center(
                    child: Text("Login Request",style: TextStyle(fontSize: 25),),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          //color: Colors.pink,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                          //color: Colors.green,
                          offset: Offset(-4.0,-4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors:[
                            Colors.grey[200],
                            Colors.grey[300],
                            Colors.grey[400],
                            Colors.grey[500],
                          ],
                          stops:[
                            0.1,
                            0.5,
                            0.8,
                            1
                          ]
                      ),
                  ),
                ),
              ),
            ),
          ),

          Divider(
            thickness: 1,
           color: Colors.red,
          ),

          Container(
            height: MediaQuery.of(context).size.height / 2.1,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
               /*    SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[


                    GestureDetector(
                      onTap: (){
                      },
                      child:Image.asset("assets/QR.png",height: 60,width: 60,),
                    ),

                    Icon(
                      FontAwesome5.address_book,
                     // color:Colors.white,
                      size: 65,
                    ),
                    Icon(
                      FontAwesome5.birthday_cake,
                      //color:Colors.white,
                      size: 65,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("My QR",style: TextStyle(
                    //  color: Colors.white,
                    ),),
                    Text("Phonebook",style: TextStyle(
                    //  color: Colors.white,
                    ),),
                    Text("Birthday",style: TextStyle(
                    //  color:Colors.white,
                    ),),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      FontAwesome.book,
                      //color:Colors.white,
                      size: 65,
                    ),
                    Icon(
                      FontAwesome5.user_check,
                      //color: Colors.white,
                      size: 65,
                    ),
                    Icon(
                      FontAwesome5.table,
                      //color: Colors.white,
                      size: 65,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Passbook Report",style: TextStyle(
                   //   color: Colors.white,
                    ),),
                    Text("Self Attedance",style: TextStyle(
                    //  color:Colors.white,
                    ),),
                    Text("Event Attedance",style: TextStyle(
                    //  color: Colors.white,
                    ),),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      FontAwesome.edit,
                      //color: Colors.white,
                      size: 65,
                    ),
                    Icon(
                      FontAwesome5.credit_card,
                      //color: Colors.white,
                      size: 65,
                    ),
                    Icon(
                      FontAwesome5.rupee_sign,
                      //color: Colors.white,
                      size: 65,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("pin Reset",style: TextStyle(
                    //  color: Colors.white,
                    ),),
                    Text("Withdraw",style: TextStyle(
                    //  color: Colors.white,
                    ),),
                    Text("Pay Fee",style: TextStyle(
                    //  color: Colors.white,
                    ),),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        FontAwesome5.envelope,
                      //  color:Colors.white,
                        size: 65,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Donate",style: TextStyle(
                      //    color: Colors.white
                      ),),
                    ],
                  ),
                ),*/

               GestureDetector(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>MyQr()));
                 },
                 child:ListTile(
                   leading:Icon(FontAwesome5.qrcode),
                   title: Text("My QR"),
                 ),
               ),


                ListTile(
                  leading:Icon(FontAwesome5.address_book),
                  title: Text("PhoneBook"),
                ),

                ListTile(
                  leading:Icon(FontAwesome5.birthday_cake),
                  title: Text("Birthday"),
                ),

                ListTile(
                  leading:Icon(FontAwesome.book),
                  title: Text("PassBook Report"),
                ),

                ListTile(
                  leading:Icon(FontAwesome5.user_check),
                  title: Text("Self Attendance"),
                ),

                ListTile(
                  leading: Icon(FontAwesome5.user),
                  title: Text("Take Attendance"),
                ),


                ListTile(
                  leading: Icon(FontAwesome5.table),
                  title: Text("Event Attendance"),
                ),

                GestureDetector(
                  onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>ResetPin()));
                     },
                     child:ListTile(
                     leading:Icon(FontAwesome.edit),
                     title:Text("Pin Reset"),
                  ),
                ),

                GestureDetector(
                  onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Withdraw()));
                  },

                  child:ListTile(
                    leading:Icon(FontAwesome5.credit_card),
                    title:Text("Withdraw"),
                  ),
                ),

                ListTile(
                       leading:Icon(FontAwesome5.rupee_sign),
                       title: Text("Pay Fee"),
                ),

                ListTile(
                     leading:Icon(FontAwesome5.envelope),
                     title: Text("Donate"),
                ),

                ListTile(
                     leading:Icon(FontAwesome5.calendar),
                     title: Text("Calender"),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }



}



