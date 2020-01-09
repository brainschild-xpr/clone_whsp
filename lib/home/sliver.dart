import 'package:flutter/material.dart';
import 'package:whatsapp_build_v1/home/calls.dart';
import 'package:whatsapp_build_v1/home/home.dart';
import 'package:whatsapp_build_v1/home/status.dart';
import 'package:whatsapp_build_v1/root.dart';

class Sliver extends StatefulWidget {
  Sliver({Key key}) : super(key: key);

  @override
  _SliverState createState() => _SliverState();
}

class _SliverState extends State<Sliver> with SingleTickerProviderStateMixin {
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
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Color(0xff128C7E),
                  expandedHeight: 100,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.only(left: 15, bottom: 60),
                    title: Text(
                      'Whatsapp',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                  bottom: TabBar(
                    controller: tabController,
                    tabs: myTabs,
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: tabController,
              children: <Widget>[
                HomePage(),
                StatusPage(),
                CallsPage(),
              ],
            )
            // TabBar(
            //   controller: tabController,
            //   tabs: myTabs,
            // ),
            ));
  }
}
