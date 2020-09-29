import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[
        Text("Jay Swaminarayan",style: TextStyle(fontSize:18,
          color: Colors.white.withOpacity(1.0),
         ),
        ),
        Text("Shree Hari",style: TextStyle(fontSize:18,
          color: Colors.white.withOpacity(1.0),
        ),),
      ],
    );
  }
}
