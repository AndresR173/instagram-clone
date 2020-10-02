import 'dart:developer';

import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Container(
        color: Color(0xFF212121),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xFF212121),
            appBar: AppBar(
              centerTitle: true,
              leading: Icon(
                Icons.photo_camera,
                size: 24,
              ),
              title: Text('Fakestagram'),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.send,
                    size: 24,
                  ),
                ),
              ],
            ),
            body: TabBarView(
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.teal,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
              ],
            ),
            bottomNavigationBar: TabBar(
              controller: _tabController,
              tabs: [
                Tab(icon: Icon(Icons.add_link)),
                Tab(icon: Icon(Icons.adb_outlined)),
                Tab(icon: Icon(Icons.access_time)),
                Tab(icon: Icon(Icons.access_alarm_outlined)),
                Tab(icon: Icon(Icons.ac_unit)),
              ],
              indicatorColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
