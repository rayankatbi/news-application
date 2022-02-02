import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screens/bookmark_screen.dart';
import 'package:news_app/screens/entertainment_page.dart';
import 'package:news_app/screens/for_you_page.dart';
import 'package:news_app/screens/politics_page.dart';
import 'package:news_app/screens/science_page.dart';
import 'package:news_app/screens/search_screen.dart';
import 'package:news_app/screens/top_screen.dart';
import 'package:news_app/screens/world_page.dart';
import 'package:news_app/widgets/custom_text.dart';

class ForYouTab extends StatefulWidget {
  const ForYouTab({Key? key}) : super(key: key);

  @override
  _ForYouTabState createState() => _ForYouTabState();
}

class _ForYouTabState extends State<ForYouTab>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
 // int _selectedIndexForTabBar = 0;
 // int _selectedIndexForBottomNavigationBar = 0;
  int _index=0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 6,
    );
    _in
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void _changePage(int selectedIndex) {
    // if (selectedIndex >= 0) _tabController.animateTo(selectedIndex);
    _selectedIndexForTabBar = selectedIndex + 1;
    _tabController.animateTo(selectedIndex);
    _selectedIndexForBottomNavigationBar = 0;
  }

 static const List<Widget> _optionsbottomNav = [
    ForYouTab(),
    SearchScreen(),
    BookMarkScreen(),
  ];
  void _onTapBottomNav(int index) {
    _selectedIndexForBottomNavigationBar = index;
    _selectedIndexForTabBar = 0;
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset("assets/images/logonews.svg"),
              const SizedBox(width: 10),
              const CustomText(
                title: 'News 24',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          bottom: TabBar(
            controller: _tabController,
            onTap: _changePage,
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
        body:
        TabBarView(
          controller: _tabController,
          children: [
            ForYouPage(),
            TopScreen(),
            WorldScreen(),
            PoliticsScreen(),
            EntertainmentScreen(),
            ScienceScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (currentIndex){
            setState(() {
              _selectedIndexForBottomNavigationBar=currentIndex;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: _selectedIndexForBottomNavigationBar,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "",
              activeIcon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: "",
                activeIcon: Icon(
                  Icons.search,
                )),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined),
              label: "",
              activeIcon: Icon(Icons.bookmark_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
