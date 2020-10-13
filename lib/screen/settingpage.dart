import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rupala/widgets/themenotifier.dart';
import 'package:rupala/widgets/theme.dart';
import 'package:day_night_switch/day_night_switch.dart';


class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  var _darkTheme = true;

  void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
    (value) ? themeNotifier.setTheme(darkTheme) : themeNotifier.setTheme(lightTheme);
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', value);
  }

  @override
  Widget build(BuildContext context){
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    _darkTheme = (themeNotifier.getTheme() == darkTheme);
    return Scaffold(
     appBar:AppBar(
       title: Text("App Setting",style:TextStyle(color: Theme.of(context).textTheme.bodyText1.color,fontSize: 20,fontWeight:FontWeight.bold),),
     ),
     body:Container(
       child:ListTile(
         leading:_darkTheme == true?Text("Dark Theme",style: TextStyle(fontSize: 20),):Text("Light theme",style: TextStyle(fontSize: 20),),
         trailing: Transform.scale(
           scale: 0.4,
           child: DayNightSwitch(
             value: _darkTheme,
             moonImage: AssetImage("assets/Moon1.png"),
             sunImage: AssetImage("assets/Sun2.png"),
             onChanged: (val) {
               setState(() {
                 _darkTheme = val;
               });
               onThemeChanged(val,themeNotifier);
             },
           ),
         ),
       )
     ),
    );
  }
}
