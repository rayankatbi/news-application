import 'package:flutter/material.dart';

class ItemArticleModel {
  final String? imgUrl;
  final String? title;
  final String? author;
  final String? type;
  final String? date;

  ItemArticleModel({
    @required this.imgUrl,
    @required this.title,
    @required this.author,
    @required this.type,
    @required this.date,
  });
}
