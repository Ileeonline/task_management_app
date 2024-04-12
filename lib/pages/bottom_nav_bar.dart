// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_management_app/pages/home_page.dart';
import 'package:task_management_app/pages/notification_page.dart';
import 'package:task_management_app/pages/schedule_page.dart';
import 'package:task_management_app/pages/search_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  List pages = const [
    HomePage(),
    SchedulePage(),
    NotificationPage(),
    SearchPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: const [],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: const Color.fromRGBO(138, 61, 240, 1),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
        ),
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                size: 35,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.calendar,
                size: 35,
              ),
              label: 'Shedule'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.bell,
                size: 35,
              ),
              label: 'Alerts'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
                size: 35,
              ),
              label: 'Search'),
        ],
      ),
      body: pages[_selectedIndex],
    );
  }
}
