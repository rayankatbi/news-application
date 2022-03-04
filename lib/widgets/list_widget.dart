import 'package:flutter/material.dart';
import 'package:news_app/widgets/constats.dart';
import 'package:news_app/widgets/custom_text.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Image.asset(
                    Ress.itemList,
                  )),
              Expanded(
                flex: 3,
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CustomText(
                      title:
                          'Monarch population soars 4,900 percent since last year in thrilling 2021 western migration',
                      maxLines: 5,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      title: 'By Andy Corbley',
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            CustomText(
                              title: 'World',
                              color: Ress.blueColr,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              title: '1m ago',
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        PopupMenuButton(
                          icon: Icon(Icons.more_horiz),
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.save_alt),
                                  CustomText(
                                    title: "Share",
                                  ),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                children: [
                                  Icon(Icons.bookmark_border),
                                  CustomText(
                                    title: "Bookmark",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
