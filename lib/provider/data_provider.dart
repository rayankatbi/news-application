import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_app/models/data_model.dart';
import 'package:http/http.dart' as http;

class Data with ChangeNotifier {

   getNews() async {
    String url =
        "http://api.mediastack.com/v1/news?access_key=2a1085d36be262ef91826756ce186f60&categories=sports&limit=15&offset=0";
    try {
      final response = await http.get(Uri.parse(url));
      final extractedData = jsonDecode(response.body);
      List<DataModel> news = [];
      if (extractedData == null) {
        return;
      }
      extractedData.forEach((element) {
        DataModel articleModel = DataModel(
          author: element['author'],
          title: element['title'],
          description: element['description'],
          url: element['url'],
          source: element['source'],
          image: element['image'],
          category: element['category'],
          language: element['language'],
          country: element['country'],
          published_at: element['published_at'],
        );
        news.add(articleModel);
        notifyListeners();
      });
    } catch (error) {
      Exception(error);
    }
  }
}
