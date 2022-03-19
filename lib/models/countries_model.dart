import 'dart:convert';

import 'package:news_app/models/data_model.dart';
import 'package:news_app/models/pagination_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class CountriesModel  {
  PaginationModel paginationModel;
  List<DataModel> dataModel;

  CountriesModel({
    required this.paginationModel,
    required this.dataModel,
  });
  factory CountriesModel.fromJson(Map<String, dynamic> json) => CountriesModel(
        paginationModel: PaginationModel.fromJson(json['paginationModel']),
        dataModel: List<DataModel>.from(
          json["dataModel"].map(
            (x) => DataModel.fromJson(x),
          ),
        ).toList(),
      );
  Map<String, dynamic> toJson() => {
        'paginationModel': paginationModel.toString(),
        'dataModel': dataModel.toString(),
      };



}
