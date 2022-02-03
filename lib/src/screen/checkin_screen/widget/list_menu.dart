// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test_mindbase/src/models/menu_list_model.dart';
import 'package:flutter_test_mindbase/src/widget/radial_painter_widget.dart';
import 'package:flutter_test_mindbase/MyIcon/my_icon_icons.dart';

class ListMenu extends StatefulWidget {
  const ListMenu({Key? key}) : super(key: key);

  @override
  State<ListMenu> createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        height: size.height * 0.718,
        width: size.width * 0.9,
        // color: Colors.red,
        child: ListView.builder(
            itemCount: ListItem().Items.length,
            itemBuilder: (BuildContext context, int index) {
              return ListMenu(size, index);
            }),
      ),
    );
  }

  Container ListMenu(Size size, int index) {
    double ShowNoti = 0;
    print(ListItem().Items[index]['notification']);
    if (ListItem().Items[index]['notification'] == true) {
      ShowNoti = 10;
    }
    var persen = ListItem().Items[index]['persen'] * 100;
    var persen_fix = persen.toStringAsFixed(0);
    double persen_painter = ListItem().Items[index]['persen'].toDouble();
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      height: 200,
      // color: Colors.black,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: size.width * 0.9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                          child: Image.asset(
                            ListItem().Items[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                              child: Icon(
                                MyIcon.bell,
                                color: Colors.blue,
                                size: 14,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: ShowNoti,
                                  width: ShowNoti,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              'Project Category',
                              style: TextStyle(color: Colors.blue),
                            ),
                            Spacer(),
                            Text(ListItem().Items[index]['name'],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700)),
                            Spacer(),
                            Text(ListItem().Items[index]['date'],
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey)),
                            Spacer(),
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Container(
                        height: 60,
                        child: CustomPaint(
                          foregroundPainter: RadialPainter(
                            bgColor: Colors.grey.shade300,
                            lineColor: ListItem().Items[index]['color'],
                            percent: persen_painter,
                            width: 10.0,
                          ),
                          child: Center(
                              child: Text(
                            '$persen_fix%',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                          //  foregroundPainter:RadialPainter(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
