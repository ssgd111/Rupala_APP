import 'package:flutter/material.dart';
import 'package:rupala/screen/Darshan.dart';
import 'package:rupala/screen/Profile.dart';
import 'package:rupala/screen/download.dart';
import 'package:rupala/screen/media.dart';
import 'package:rupala/screen/trending.dart';


class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {

  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  @override
  Widget build(BuildContext context) {

    Widget child ;
    if(tabItem == "Media")
      child = Media();
    else if(tabItem == "Download")
      child = Download();
    else if(tabItem == "Darshan")
      child = Darshan();
    else if(tabItem == "Trending")
      child = Trending();
    else if(tabItem == "Profile")
      child = Profile();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
            builder: (context) => child
        );
      },
    );
  }
}