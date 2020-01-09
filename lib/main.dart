import 'package:flutter/material.dart';
import 'package:whatsapp_build_v1/home/sliver.dart';

import 'root.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sliver(),
    );
  }
}
