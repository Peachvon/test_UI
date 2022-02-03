// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_test_mindbase/src/screen/dashboard/widget/pie_chart.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int Comple = 8;
  int OnProcess = 72;
  int Delay = 5;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int Sum = Comple + OnProcess + Delay;

    return Scaffold(
      // backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: size.height * 0.3,
              width: size.width,
              child: Image(
                image: AssetImage('assets/images/bgButton.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.2,
                  width: size.width,
                  //padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bgScreen.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      )),
                ),
                Column(
                  children: [
                    Container(
                      height: size.height * 0.2,
                      width: size.width,
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                      child: SafeArea(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Icon(Icons.logout, color: Colors.white),
                                Text(
                                  'ขอต้อนรับเข้าสู่ C-Site System',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/logo.png'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      'NoReply HaSWorks',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'ConcreteServiceExcellence//',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.face,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 350,
                      width: size.width,
                      color: Colors.grey.shade100,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ความคืบหน้าทั้งหมด',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Stack(children: [
                                  Container(
                                    height: 200,
                                    width: 200,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Spacer(
                                          flex: 5,
                                        ),
                                        Text(
                                          Sum.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 44),
                                        ),
                                        Spacer(flex: 1),
                                        Text(
                                          'โครงการทั้งหมด',
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 12),
                                        ),
                                        Spacer(
                                          flex: 5,
                                        ),
                                      ],
                                    ),
                                  ),
                                  PieChartItem()
                                ]),
                                Spacer(),
                                Column(
                                  children: [
                                    Detail('Comple', Comple,
                                        Colors.green.shade300),
                                    Detail('On Process', OnProcess,
                                        Colors.blue.shade300),
                                    Detail('Delay', Delay, Colors.red.shade300),
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'อัพเดทล่าสุด',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding Detail(String topic, int num, Color color) {
    return Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: Container(
          height: 65,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: TextStyle(
                      color: Colors.grey.shade500, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      num.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
