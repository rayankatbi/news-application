import 'package:flutter/material.dart';
import 'package:news_app/models/data_model.dart';
import 'package:news_app/provider/data_provider.dart';
import 'package:news_app/screens/account_screen.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/test.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../screens/sub_article_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
            primaryColor: Colors.black,
            scaffoldBackgroundColor: Colors.white,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
            ),
            appBarTheme: AppBarTheme(
              elevation: 0,
              color: Colors.white,
              // backgroundColor: Colors.white,
            )),
        home: TestScreen(),
        routes: {
          SubArticle.routeName: (context) => SubArticle(),
          AccountScreen.routeName: (context) => AccountScreen(),
        },
      ),
    );
  }
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<Data>(create: (_) => Data()),
];
