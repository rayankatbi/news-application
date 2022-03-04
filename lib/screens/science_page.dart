import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_widget.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 6,
            physics: BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: ListWidget(),
                onTap: () {
                  //   Navigator.pushNamed(context, '/sub-article' , arguments:model[index] );
                },
              );
            }));
  }
}
