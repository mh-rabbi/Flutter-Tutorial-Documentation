import 'package:classico/home_page.dart';
import 'package:classico/profile_page.dart';
import 'package:classico/settings_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //step4- keeps track of the current page to display
  int _selectedIndex = 0;

  //step5 - this method updates the new selected index(first convert it into stateful widget from statless)
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    //home page
    HomePage(),

    //Profile page
    ProfilePage(),

    //settings page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Page'),
        backgroundColor: Colors.deepPurpleAccent,
      ),

      // step3 - body of pages
      body: _pages[_selectedIndex],

      //step1 - create bottom bar
      bottomNavigationBar: BottomNavigationBar(
        //step6 - index selection and update with our user defined func
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,

        items: [
          //Home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          //Profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

          //Settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
