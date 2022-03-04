class DataModel {
  String author;
  String title;
  String description;
  String url;
  String source;
  String image;
  String category;
  String language;
  String country;
  String published_at;

  DataModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.source,
    required this.image,
    required this.category,
    required this.language,
    required this.country,
    required this.published_at,
  });
  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        author: json['author'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        source: json['source'],
        image: json['image'],
        category: json['category'],
        language: json['category'],
        country: json['country'],
        published_at: json['published_at'],
      );
  Map<String, dynamic> toJson() => {
        'author': author,
        'title': title,
        'description': description,
        'url': url,
        'source': source,
        'image': image,
        'category': category,
        'language': language,
        'country': country,
        'published_at': published_at,
      };
}
