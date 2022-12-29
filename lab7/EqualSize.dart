import 'package:flutter/material.dart';

import 'lists.dart';

class EqualSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> lst = [];
    for (var colrs in color) {
      lst.add(createRect(colrs, Size(size.width / 3, size.height / 3)));
    }
    return Grids(lst);
  }
}
