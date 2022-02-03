import 'package:flutter/material.dart';

class ListItem {
  List Items = [
    {
      'image': 'assets/images/image1.png',
      'name': 'Service Construction A',
      'date': '28/01/2021 - 17/02/2021',
      'persen': 1,
      'color': Colors.green.shade400,
      'notification': true,
    },
    {
      'image': 'assets/images/image2.png',
      'name': 'Service Construction B',
      'date': '28/01/2021 - 17/02/2021 | Delay 100 วัน 25%',
      'persen': 0.5,
      'color': Colors.blue.shade300,
      'notification': true,
    },
    {
      'image': 'assets/images/image3.png',
      'name': 'Service Construction C',
      'date': '28/01/2021 - 17/02/2021 | Delay 100 วัน 25%',
      'persen': 0.75,
      'color': Colors.red.shade300,
      'notification': false,
    },
  ];
  ListItem();
}
