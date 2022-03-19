// import 'dart:convert';
//
// List<JsonPlaceHolder> jsonPlaceHolderFromJson(String str) =>
//     List<JsonPlaceHolder>.from(
//       json.decode(str).map(
//             (x) => JsonPlaceHolder.fromJson(x),
//           ),
//     );
//
// String jsonPlaceHolderToJson(List<JsonPlaceHolder> data) => json.encode(
//       List<dynamic>.from(
//         data.map(
//           (x) => x.toJson(),
//         ),
//       ),
//     );

class JsonPlaceHolder {
  JsonPlaceHolder({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory JsonPlaceHolder.fromJson(Map<String, dynamic> json) =>
      JsonPlaceHolder(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
