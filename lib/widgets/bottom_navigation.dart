import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/screens/classes_screen.dart';
import 'package:ui/screens/home_screen.dart';
import 'package:ui/screens/setting_screen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedTab = 0;
  Widget _currentPage;
  List<Widget> _pages;
  HomeScreen _homeScreen;
  CalendarPage _classesScreen;
  SettingScreen _settingScreen;

  @override
  void initState() {
    super.initState();
    _homeScreen = HomeScreen();
    _settingScreen = SettingScreen();
    _classesScreen = CalendarPage();
    _pages = [_homeScreen, _classesScreen, _settingScreen];
    _currentPage = _homeScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: <Widget>[
          _currentPage,
          _bottomNavigator(),
        ],
      ),
    );
  }

  _bottomNavigator() {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).backgroundColor,
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
              if (index == 0 || index == 1 || index == 2)
                _currentPage = _pages[index];
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _selectedTab == 0
                    ? Theme.of(context).accentColor
                    : kTextColor,
                size: 20.0,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
                color: _selectedTab == 1
                    ? Theme.of(context).accentColor
                    : kTextColor,
                size: 20.0,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.train, //homework
                color: _selectedTab == 2
                    ? Theme.of(context).accentColor
                    : kTextColor,
                size: 20.0,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.comment,
                color: _selectedTab == 3
                    ? Theme.of(context).accentColor
                    : kTextColor,
                size: 20.0,
              ),
              title: SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
