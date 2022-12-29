import 'package:flutter/material.dart';
import './EqualSize.dart';
import 'DiffSize.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
        routes: {
          'EqualSize': (context) => EqualSize(),
          'DiffSize': (context) => DiffSize(),
        },
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
              width: size.width / 3,
              height: size.height / 3,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('EqualSize');
                },
                child: const Text("Equal Size"),
              )),
          SizedBox(
              width: size.width / 3,
              height: size.height / 3,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('DiffSize');
                },
                child: const Text("Different Size"),
              )),
        ],
      )),
    );
  }
}
