import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Status'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.photo_camera),
      ),
    );
  }
}
