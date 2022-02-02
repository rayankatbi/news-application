import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_widget.dart';

class PoliticsScreen extends StatelessWidget {
  const PoliticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListWidget();
        },
      ),
    );
  }
}
