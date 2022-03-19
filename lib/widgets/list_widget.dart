import 'package:flutter/material.dart';
import 'package:news_app/provider/country_provider.dart';
import 'package:provider/provider.dart';

class ListWidget extends StatelessWidget {
  ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final country = Provider.of<Country>(context,listen: false);

    return FutureBuilder(
      future: country.fetchData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
           // itemCount: country.fetchData(),
            itemBuilder: (BuildContext context, int index) {
              // print(${snapshot.data[index]['title']});
              return Column(
                children: [
                  Center(
                    child: Text('${snapshot.data[index]['title']}'),
                  ),
                  // Center(
                  //   child: Text('${snapshot.data}'),
                  // ),
                ],
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        } else
          return Center(
            child: CircularProgressIndicator(),
          );
      },
      //     return Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.symmetric(
      //             horizontal: 10,
      //             vertical: 10,
      //           ),
      //           child: Row(
      //             children: <Widget>[
      //               Expanded(
      //                   flex: 2,
      //                   child: Image.asset(
      //                     Ress.itemList,
      //                   )),
      //               Expanded(
      //                 flex: 3,
      //                 child: Column(
      //                   //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   crossAxisAlignment: CrossAxisAlignment.stretch,
      //                   children: <Widget>[
      //                     CustomText(
      //                       title:
      //                         //  '${snapshot.data[]!['title']}',
      //                           'Monarch population soars 4,900 percent since last year in thrilling 2021 western migration',
      //                       maxLines: 5,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                     SizedBox(
      //                       height: 5,
      //                     ),
      //                     CustomText(
      //                       title: 'By Andy Corbley',
      //                       color: Colors.grey,
      //                     ),
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       children: [
      //                         Row(
      //                           children: <Widget>[
      //                             CustomText(
      //                               title: 'World',
      //                               color: Ress.blueColr,
      //                             ),
      //                             SizedBox(
      //                               width: 10,
      //                             ),
      //                             CustomText(
      //                               title: '1m ago',
      //                               color: Colors.grey,
      //                             ),
      //                           ],
      //                         ),
      //                         PopupMenuButton(
      //                           icon: Icon(Icons.more_horiz),
      //                           itemBuilder: (context) => [
      //                             PopupMenuItem(
      //                               child: Row(
      //                                 children: [
      //                                   Icon(Icons.save_alt),
      //                                   CustomText(
      //                                     title: "Share",
      //                                   ),
      //                                 ],
      //                               ),
      //                             ),
      //                             PopupMenuItem(
      //                               child: Row(
      //                                 children: [
      //                                   Icon(Icons.bookmark_border),
      //                                   CustomText(
      //                                     title: "Bookmark",
      //                                   ),
      //                                 ],
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(horizontal: 10),
      //                 child: Divider(
      //                   thickness: 1,
      //                   color: Colors.grey.shade300,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ],
      //     );
    );
  }
}
