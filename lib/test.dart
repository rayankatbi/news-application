import 'package:flutter/material.dart';
import 'package:news_app/provider/country_provider.dart';
import 'package:news_app/provider/data_provider.dart';
import 'package:provider/provider.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  void initState() {
    Provider.of<Country>(context).fetchData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final news = Provider.of<Country>(context);
    //var newsdata = news.
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Consumer<Country>(
              builder: (BuildContext context, value, Widget? child) {
                return Center(
                  child: Text(
                    value.paginationModel.limit.toString(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
