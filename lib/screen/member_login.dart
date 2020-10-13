import 'package:flutter/material.dart';
import 'package:rupala/screen/media.dart';

class MemberLogin extends StatefulWidget {
  @override
  _MemberLoginState createState() => _MemberLoginState();
}

class _MemberLoginState extends State<MemberLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Member Login"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),



                Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 25,
                          left: MediaQuery.of(context).size.width / 25,
                          top: MediaQuery.of(context).size.height / 20),

                        child: Container(
                          height: MediaQuery.of(context).size.height / 3.5,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),

                    Align(
                      alignment: Alignment.topCenter,
                      child:Padding(
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 50,
                        ),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width / 5.2,
                          backgroundColor: Colors.amber,
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width / 5.5,
                            backgroundImage: AssetImage("assets/p11.jpg"),
                          ),
                        ),
                      ),
                    ),



                    Align(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 5.2,
                        ),
                        child: Text(
                          "5555",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                    Align(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 4.5,
                        ),
                        child: Text(
                          "Shree Ghanshyam Maharaj",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),


                    Align(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 3.9,
                        ),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.phone_android,
                              size: 20,
                            ),
                            Text(
                              " : 81286 55555",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Align(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 3.5,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.email,
                              size: 20,
                            ),
                            Text(
                              " : ssgdRupala555@gmail.com",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                             ),
                           ],
                         ),
                       ),
                     ),

                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),

                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/25),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          SizedBox(width:MediaQuery.of(context).size.width/100,),
                          Text("Address",style: TextStyle(fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),

                    SizedBox(
                      height:MediaQuery.of(context).size.height/100,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 15,
                        left: MediaQuery.of(context).size.width / 15,
                      ),
                      child: Text(
                          "555,Swaminarayan Sanskardham Gurukul, Dhrangdhara"),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 25, left: MediaQuery.of(context).size.width / 25,),
                      child: Divider(
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),


                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/25),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.phone_iphone),
                          SizedBox(width:MediaQuery.of(context).size.width/100,),
                          Text("Your Mobile",style: TextStyle(fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),

                    SizedBox(
                      height:MediaQuery.of(context).size.height/100,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 15,),
                      child:Text("83242 44421,43232 42434"),
                    ),


                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 25, left: MediaQuery.of(context).size.width / 25,),
                      child: Divider(
                        color: Colors.pink,
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/25),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.phone_android),
                          SizedBox(width:MediaQuery.of(context).size.width/100,),
                          Text("Father Mobile",style: TextStyle(fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),

                    SizedBox(
                      height:MediaQuery.of(context).size.height/100,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 15,),
                      child:Text("83242 44421"),
                    ),


                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 25, left: MediaQuery.of(context).size.width / 25,),
                      child: Divider(
                        color: Colors.pink,
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/25),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.home),
                          SizedBox(width:MediaQuery.of(context).size.width/100,),
                          Text("Home Contact",style: TextStyle(fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),

                    SizedBox(
                      height:MediaQuery.of(context).size.height/100,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 15,),
                      child:Text(""),
                    ),


                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 25, left: MediaQuery.of(context).size.width / 25,),
                      child: Divider(
                        color: Colors.pink,
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/25),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.cake),
                          SizedBox(width:MediaQuery.of(context).size.width/100,),
                          Text("Birth Date",style: TextStyle(fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),

                    SizedBox(
                      height:MediaQuery.of(context).size.height/100,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 15,),
                      child:Text("23/03/1937"),
                    ),


                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 25, left: MediaQuery.of(context).size.width / 25,),
                      child: Divider(
                        color: Colors.pink,
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/25),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.date_range_rounded),
                          SizedBox(width:MediaQuery.of(context).size.width/100,),
                          Text("Marriage Date",style: TextStyle(fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),

                    SizedBox(
                      height:MediaQuery.of(context).size.height/100,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 15,),
                      child:Text(""),
                    ),


                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 25, left: MediaQuery.of(context).size.width / 25,),
                      child: Divider(
                        color: Colors.pink,
                      ),
                    ),

                  ],
                ),


                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/25),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.group_work_outlined),
                          SizedBox(width:MediaQuery.of(context).size.width/100,),
                          Text("Blood Group",style: TextStyle(fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),

                    SizedBox(
                      height:MediaQuery.of(context).size.height/100,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 15,),
                      child:Text(""),
                    ),


                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 25, left: MediaQuery.of(context).size.width / 25,),
                      child: Divider(
                        color: Colors.pink,
                      ),
                    ),

                  ],
                ),



                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/25),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.assignment_ind_outlined),
                          SizedBox(width:MediaQuery.of(context).size.width/50,),
                          Text("Aadhar Number",style: TextStyle(fontWeight: FontWeight.w600),)
                        ],
                      ),
                    ),

                    SizedBox(
                      height:MediaQuery.of(context).size.height/100,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left:MediaQuery.of(context).size.width / 15,),
                      child:Text("123412341234"),
                    ),


                    Padding(
                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 25, left: MediaQuery.of(context).size.width / 25,),
                      child: Divider(
                        color: Colors.pink,
                      ),
                    ),

                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
