import 'package:flutter/material.dart';
import 'package:rupala/screen/login_request.dart';
import 'package:rupala/screen/withdraw.dart';
import 'member_login.dart';
import 'resetpin.dart';
import 'myQr.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.color,
        //backgroundColor: Colors.black,
        title: Text("Trending",style:TextStyle(
            color:Theme.of(context).textTheme.bodyText1.color,
            fontSize:20,
            fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(

        child:Column(
          children: <Widget>[

            RaisedButton(
              child:Text("Login Request"),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginRequest()));
              },
            ),


            RaisedButton(
              child:Text("Member Login"),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MemberLogin()));
              },
            ),

            RaisedButton(
              child:Text("Reset Pin"),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ResetPin()));
              },
            ),


            RaisedButton(
              child:Text("Withdraw"),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Withdraw()));
              },
            ),

            RaisedButton(
              child:Text("My QR"),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MyQr()));
              },
            ),



          ],
        ),
      ),
    );
  }
}
