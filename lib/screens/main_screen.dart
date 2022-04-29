import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggupot/screens/add/create_screen.dart';
import 'package:ggupot/screens/map/map_screen.dart';

import 'home/home_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({ Key? key }) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {

  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          CreateMyPotScreen(),
          MapScreen()
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xffFF7088),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: [
          const BottomNavigationBarItem( label: '',icon: Icon(CupertinoIcons.home, size: 30)),
          const BottomNavigationBarItem( label: '',icon: Icon(CupertinoIcons.plus_circle, size: 30)),
          const BottomNavigationBarItem( label: '',icon: Icon(CupertinoIcons.map, size: 30))
        ],

      ),
    );
  }
}