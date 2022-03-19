import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/countries_model.dart';
import 'package:news_app/models/data_model.dart';
import 'package:news_app/models/pagination_model.dart';

class Country with ChangeNotifier {
  late PaginationModel paginationModel;

   fetchData() async {
    String url =
        "http://api.mediastack.com/v1/news?access_key=2a1085d36be262ef91826756ce186f60&categories=sports&limit=15&offset=0";
    try {
      final response = await http.get(Uri.parse(url));
      final extractedData = jsonDecode(response.body) ;
      List<DataModel> loadnews = [];
      var rest = extractedData["data"] as List;
      final data = CountriesModel.fromJson(extractedData);
      loadnews = data.dataModel;
      paginationModel = data.paginationModel;

      return loadnews;
      notifyListeners();
    } catch (error) {
      Exception(error);
    }
  }
}
