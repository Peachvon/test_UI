import 'package:flutter/material.dart';
import 'package:flutter_test_mindbase/MyIcon/my_icon_icons.dart';

class Search_project extends StatefulWidget {
  const Search_project({Key? key}) : super(key: key);

  @override
  State<Search_project> createState() => _Search_projectState();
}

class _Search_projectState extends State<Search_project> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Container(
              width: size.width * 0.75,
              alignment: Alignment.centerLeft,

              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(12.0),
              ),

              // ignore: prefer_const_constructors
              child: TextField(
                // controller: ConText,
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.top,
                obscureText: false,
                keyboardType: TextInputType.text,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.black,
                ),
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade500,
                    size: 28,
                  ),
                  suffixIcon: Icon(
                    Icons.date_range_outlined,
                    color: Colors.grey.shade500,
                    size: 28,
                  ),
                  contentPadding: EdgeInsets.only(left: 16.0),
                  label: Text(
                    'Search Project',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            const Icon(
              MyIcon.tune,
              size: 38,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
