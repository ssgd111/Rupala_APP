import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:rupala/widgets/themenotifier.dart';
import 'package:rupala/widgets/theme.dart';
import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  var _darkTheme = true;

  @override

  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    _darkTheme = (themeNotifier.getTheme() == darkTheme);
    return Scaffold(
      appBar: AppBar(
        excludeHeaderSemantics: true,
       // backgroundColor: Colors.black,
        backgroundColor: Theme.of(context).appBarTheme.color,
        title: Text("Profile",style:TextStyle(
            color: Theme.of(context).textTheme.bodyText1.color,
            fontSize: 20,fontWeight:FontWeight.bold),),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height/4,
            //color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child:ListView(
              children: <Widget>[
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 16.0),
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
              ],
            ),
          ),
          Divider(
            thickness: 1,
           // color: Colors.yellow,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.9,
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

            ListTile(
                    leading:Icon(FontAwesome5.qrcode),
                    title: Text("My QR"),
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
                  leading:Icon(FontAwesome5.table),
                  title: Text("Event Attendance"),
                ),

                ListTile(
                  leading:Icon(FontAwesome.edit),
                  title: Text("Pin Reset"),
                ),

                ListTile(
                  leading:Icon(FontAwesome5.credit_card),
                  title: Text("Withdraw"),
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

  void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
    (value) ? themeNotifier.setTheme(darkTheme) : themeNotifier.setTheme(lightTheme);
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', value);
  }

}



