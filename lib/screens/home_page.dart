import 'package:flutter/material.dart';
import 'package:news_app/screens/entertainment_page.dart';
import 'package:news_app/screens/for_you_page.dart';
import 'package:news_app/screens/politics_page.dart';
import 'package:news_app/screens/science_page.dart';
import 'package:news_app/screens/top_screen.dart';
import 'package:news_app/screens/world_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 6,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _changeTab(int selectedIndex) {
    if (selectedIndex >= 0) _tabController.animateTo(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: TabBar(
            controller: _tabController,
            onTap: _changeTab,
            isScrollable: true,
            physics: BouncingScrollPhysics(),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.black,
            ),
            labelStyle: TextStyle(
              fontFamily: "Modelica",
            ),
            tabs: [
              Tab(text: 'For You'),
              Tab(text: 'Top'),
              Tab(text: 'World'),
              Tab(text: 'Politics'),
              Tab(text: 'Entertainment'),
              Tab(text: 'Science'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          physics: BouncingScrollPhysics(),
          children: [
            ForYouPage(),
            TopScreen(),
            WorldScreen(),
            PoliticsScreen(),
            EntertainmentScreen(),
            ScienceScreen(),
          ],
        ),
      ),
    );
  }
}
