import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  CallsPage({Key key}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Calls'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_call),
        backgroundColor: Color(0xff25D366),
      ),
    );
  }
}
