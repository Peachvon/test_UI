// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test_mindbase/src/screen/checkin_screen/widget/list_menu.dart';
import 'package:flutter_test_mindbase/src/screen/checkin_screen/widget/search_project.dart';

class CheckInScreen extends StatefulWidget {
  const CheckInScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckInScreen> createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bgScreen.png'),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Check In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          )),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.1),
            height: size.height * 0.9,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Search_project(),
                  ListMenu(),
                ],
              ),
            ),
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
