import 'package:flutter/material.dart';
import 'package:flutter_test_mindbase/MyIcon/my_icon_icons.dart';
import 'package:flutter_test_mindbase/src/screen/checkin_screen/checkin_screen.dart';
import 'package:flutter_test_mindbase/src/screen/dashboard/dashboard.dart';
import 'package:flutter_test_mindbase/src/screen/dashboard/widget/pie_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final tabs = [
    const CheckInScreen(),
    Center(
      child: Text('Null...'),
    ),
    const DashBoard()
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.blue,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(MyIcon.map_marker_alt),
            label: 'Check in',
            backgroundColor: Colors.blue,
          ),
          const BottomNavigationBarItem(
            icon: Icon(MyIcon.newspaper),
            label: 'inspection',
            backgroundColor: Colors.blue,
          ),
          const BottomNavigationBarItem(
            icon: Icon(MyIcon.gauge_1),
            label: 'Dashboard',
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
