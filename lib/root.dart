import 'package:flutter/material.dart';
import 'package:whatsapp_build_v1/home/calls.dart';
import 'package:whatsapp_build_v1/home/status.dart';

import 'home/home.dart';

class Root extends StatefulWidget {
  Root({Key key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> with SingleTickerProviderStateMixin {
  static List<Tab> myTabs = <Tab>[
    Tab(
      text: 'Chat',
    ),
    Tab(
      text: 'Status',
    ),
    Tab(
      text: 'Calls',
    )
  ];

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          backgroundColor: Color(0xff128C7E),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            controller: tabController,
            tabs: myTabs,
          ),
        ),
        );
  }
}
