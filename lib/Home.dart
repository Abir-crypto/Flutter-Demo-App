
import 'package:demo/DrawerFile.dart';
import 'package:demo/Tabs/Gallery.dart';
import 'package:demo/Tabs/Setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Tabs/User.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
        User(),
        Setting(),
        Gallery(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "User",
                icon: Icon(Icons.verified_user),
              ),
              Tab(
                text: "Setting",
                icon: Icon(Icons.settings),
              ),
              Tab(
                text: "Gallery",
                icon: Icon(Icons.picture_in_picture),
              ),
            ],
          ),
        ),
        drawer: AmrDrawer(),
        body: TabBarView(
          children: [
            User(),
            Setting(),
            Gallery(),
          ],
        ),
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
