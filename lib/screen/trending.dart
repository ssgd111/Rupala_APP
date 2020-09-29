import 'package:flutter/material.dart';

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
    );
  }
}
