import 'package:flutter/material.dart';

List<Color> color = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.pinkAccent,
  Colors.amber,
  Colors.cyan,
  Colors.yellowAccent,
  Colors.blueGrey,
  Colors.redAccent
];
Widget createRect(Color col, Size size) => Container(
      width: size.width,
      height: size.height,
      color: col,
    );

Widget Grids(List<Widget> lst) => Row(
      children: [
        Column(
          children: [...lst.sublist(0, 3)],
        ),
        Column(
          children: [...lst.sublist(3, 6)],
        ),
        Column(
          children: [...lst.sublist(6, 9)],
        )
      ],
    );
