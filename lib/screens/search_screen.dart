import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Container(
              width: width * 0.5,
              height: height * 0.05,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(child: Text('ddd')),
            ),
          ],
        )
      ],
    ));
  }
}
