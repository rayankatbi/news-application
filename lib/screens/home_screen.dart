import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/screens/bookmark_screen.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/screens/search_screen.dart';
import 'package:news_app/screens/settings_screen.dart';
import 'package:news_app/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  final List _pages = <Widget>[
    HomePage(),
    SearchScreen(),
    BookMarkScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        currentIndex: _index,
        onTap: (selectedIndex) {
          setState(() {
            this._index = selectedIndex;
          });
        },
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
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "",
            activeIcon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
