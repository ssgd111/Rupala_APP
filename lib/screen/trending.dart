import 'package:flutter/material.dart';
import 'MemberRequest.dart';


class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Theme.of(context).appBarTheme.color,
        title:Text("Trending",style:TextStyle(
            color:Theme.of(context).textTheme.bodyText1.color,
            fontSize:20,
            fontWeight: FontWeight.bold),
        ),
      ),
      body:Container(
        child: RaisedButton(
          child: Text("Go to Member Login"),
          onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>MemberRequest()));
          },
        ),
      ),
    );
  }
}
