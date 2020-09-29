import 'package:flutter/material.dart';
import 'package:rupala/screen/homePage.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rupala/widgets/theme.dart';
import 'package:rupala/widgets/themenotifier.dart';
import 'package:provider/provider.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]).then((_){
    SharedPreferences.getInstance().then((prefs) {
      var darkModeOn = prefs.getBool('darkMode') ?? true;
      runApp(
        ChangeNotifierProvider<ThemeNotifier>(
          create:(_) => ThemeNotifier(darkModeOn ? darkTheme : lightTheme),
          child: MyApp(),
        ),
       );
      }
     );
    }
   );
 }


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        theme: themeNotifier.getTheme(),
        home:Stack(
          children:<Widget>[
            HomePage(),
          ],
        )
     );
  }
}