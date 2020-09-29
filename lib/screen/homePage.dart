import 'package:flutter/material.dart';
import 'package:rupala/widgets/tab_navigator.dart';
import 'package:flutter_icons/flutter_icons.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _currentPage = "Darshan";

  List<String> pageKeys = ["Media", "Download", "Darshan", "Trending", "Profile"];

  Map<String,GlobalKey<NavigatorState>> _navigatorKeys = {
    "Media": GlobalKey<NavigatorState>(),
    "Download": GlobalKey<NavigatorState>(),
    "Darshan": GlobalKey<NavigatorState>(),
    "Trending": GlobalKey<NavigatorState>(),
    "Profile": GlobalKey<NavigatorState>(),
  };

  int _selectedIndex = 2;

  void _selectTab(String tabItem, int index) {
    if (tabItem == _currentPage) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    }
    else
      {
      setState((){
        _currentPage = pageKeys[index];
        _selectedIndex = index;
        }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() async{
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentPage].currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentPage != "Media") {
            _selectTab("Media", 1);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
            _buildOffstageNavigator("Media"),
            _buildOffstageNavigator("Download"),
            _buildOffstageNavigator("Darshan"),
            _buildOffstageNavigator("Trending"),
            _buildOffstageNavigator("Profile"),
          ]
        ),
        bottomNavigationBar:Theme(
          data: Theme.of(context).copyWith(
            canvasColor:Colors.black,
          ),
          child:BottomNavigationBar(
             selectedItemColor: Colors.red,
             showUnselectedLabels: true,
             unselectedItemColor:Colors.white,
              onTap: (int index) {
               _selectTab(pageKeys[index], index);
            },
            currentIndex: _selectedIndex,
            items:[
              BottomNavigationBarItem(icon: new Icon(MaterialIcons.video_library), title: new Text('Media'),),
              BottomNavigationBarItem(icon: new Icon(MaterialIcons.cloud_download), title: new Text('Download'),),
              BottomNavigationBarItem(icon: new Icon(MaterialIcons.home), title: new Text('Darshan'),),
              BottomNavigationBarItem(icon: new Icon(Icons.whatshot), title: new Text('Trending'),),
              BottomNavigationBarItem(icon: new Icon(Icons.account_circle), title: new Text('Profile'),),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
  Widget _buildOffstageNavigator(String tabItem){
    return Offstage(
      offstage: _currentPage != tabItem,
      child:TabNavigator(
         navigatorKey:_navigatorKeys[tabItem],
         tabItem:tabItem,
      ),
    );
  }
}
