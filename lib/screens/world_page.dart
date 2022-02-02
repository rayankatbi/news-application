import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_widget.dart';

class WorldScreen extends StatelessWidget {
  const WorldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
            itemCount: 1,
            itemBuilder: (BuildContext context , int index){
          return ListWidget();
        }),
    );
  }
}

