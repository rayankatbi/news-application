import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_widget.dart';

class ForYouPage extends StatelessWidget {
  const ForYouPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ListView.builder(
          itemCount: 3,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
        return ListWidget();
      }),
    );
  }
}
