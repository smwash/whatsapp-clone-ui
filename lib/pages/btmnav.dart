import 'package:flutter/material.dart';

class BtmNav extends StatefulWidget {
  @override
  _BtmNavState createState() => _BtmNavState();
}

class _BtmNavState extends State<BtmNav> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        // fixedColor: Colors.orange,
        selectedItemColor: Colors.black,
        iconSize: 30.0,
        unselectedItemColor: Colors.white,
        selectedFontSize: 20.0,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            title: Text('Camera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
