import 'package:flutter/material.dart';
import 'package:news_app/widgets/constats.dart';
import 'package:news_app/widgets/custom_text.dart';

class SubArticle extends StatefulWidget {
  static const routeName = '/sub-article';
  const SubArticle({Key? key}) : super(key: key);

  @override
  State<SubArticle> createState() => _SubArticleState();
}

class _SubArticleState extends State<SubArticle> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.bookmark_border_outlined,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.save_alt),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Image.asset(
              Ress.itemList,
              fit: BoxFit.fill,
              width: double.infinity,
              height: height * 0.25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  CustomText(
                    title:
                        "Monarch population soars 4,900 percent since last year in thrilling 2021 western migration",
                    fontWeight: FontWeight.bold,
                    size: 18.0,
                    maxLines: 4,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        child: ClipRRect(
                          child: Image.asset(Ress.avatar),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CustomText(
                        title: 'By Andy Corbley',
                        color: Colors.grey,
                        size: 16.0,
                      ),
                      Spacer(),
                      CustomText(
                        title: '1m ago',
                        color: Colors.grey,
                        size: 16.0,
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomText(

                    height: 1.5,
                    size: 18.0,
                    maxLines: 50,
                    title:
                        "When just 200 Western monarch butterflies arrived in the Pismo Beach Butterfly Grove from their northerly migration last year, park rangers feared the treasured insect would soon be gone forever."
                        " This year, however, volunteers tallied their numbers at over 100,000, a spectacular swarm of hope that traveled down from as far north as Canada to the spend the winter on the California coast."
                        "  It’s expected that the monarch butterfly will be placed on the Endangered Species List soon, due to declines in both western and eastern monarch butterfly numbers. Genetically indistinguishable, they are separate merely for the fact that monarchs living and migrating east of the Rockies overwinter in Mexico, while those on the western side of the Rockies overwinter along California’s west coast."
                        "When just 200 Western monarch butterflies arrived in the Pismo Beach Butterfly Grove from their northerly migration last year, park rangers feared the treasured insect would soon be gone forever."
                        " This year, however, volunteers tallied their numbers at over 100,000, a spectacular swarm of hope that traveled down from as far north as Canada to the spend the winter on the California coast."
                        "  It’s expected that the monarch butterfly will be placed on the Endangered Species Li"
                        "When just 200 Western monarch butterflies arrived in the Pismo Beach Butterfly Grove from their northerly migration last year, park rangers feared the treasured insect would soon be gone forever."
                        " This year, however, volunteers tallied their numbers at over 100,000, a spectacular swarm of hope that traveled down from as far north as Canada to the spend the winter on the California coast."
                        "  It’s expected that the monarch butterfly will be placed on the Endangered Species Li",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
