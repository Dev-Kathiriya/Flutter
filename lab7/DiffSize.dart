import 'package:flutter/material.dart';
import 'package:lab7/lists.dart';

class DiffSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> lst = [];
    List<Size> sz = [
      Size(size.width / 3, size.height * (1 / 6)),
      Size(size.width / 3, size.height * (2 / 6)),
      Size(size.width / 3, size.height * (3 / 6)),
      Size(size.width / 3, size.height * (3 / 6)),
      Size(size.width / 3, size.height * (2 / 6)),
      Size(size.width / 3, size.height * (1 / 6)),
      Size(size.width / 3, size.height * (2 / 6)),
      Size(size.width / 3, size.height * (2 / 6)),
      Size(size.width / 3, size.height * (2 / 6))
    ];
    for (int i = 0; i < sz.length; i++) {
      lst.add(createRect(color[i], sz[i]));
    }
    return Grids(lst);
  }
}
