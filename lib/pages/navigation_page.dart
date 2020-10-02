import 'package:flutter/material.dart';

import '../utils/assets.dart';

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
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    setState(() {});
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
              title: Image.asset(
                Assets.titleImage,
                height: 33,
              ),
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
              controller: _tabController,
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
                Tab(
                  icon: _tabController.index == 0
                      ? Image.asset(
                          Assets.home,
                          height: 24,
                        )
                      : Image.asset(
                          Assets.homeOutline,
                          height: 24,
                        ),
                ),
                Tab(
                  icon: _tabController.index == 1
                      ? Image.asset(
                          Assets.search,
                          height: 24,
                        )
                      : Image.asset(
                          Assets.searchOutline,
                          height: 24,
                        ),
                ),
                Tab(
                  icon: _tabController.index == 2
                      ? Image.asset(
                          Assets.add,
                          height: 24,
                        )
                      : Image.asset(
                          Assets.addOutline,
                          height: 24,
                        ),
                ),
                Tab(
                  icon: _tabController.index == 3
                      ? Icon(
                          Icons.favorite,
                          size: 24,
                        )
                      : Icon(
                          Icons.favorite_border,
                          size: 24,
                        ),
                ),
                Tab(
                  icon: _tabController.index == 4
                      ? Image.asset(
                          Assets.person,
                          height: 24,
                        )
                      : Image.asset(
                          Assets.personOutline,
                          height: 24,
                        ),
                ),
              ],
              indicatorColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
