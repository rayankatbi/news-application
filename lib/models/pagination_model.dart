class PaginationModel {
  int limit;
  int offset;
  int count;
  int total;
  PaginationModel({
    required this.limit,
    required this.offset,
    required this.count,
    required this.total,
  });
  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      PaginationModel(
        limit: json["limit"],
        offset: json["offset"],
        count: json["count"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "limit": limit,
        "offset": offset,
        "count": count,
        "total": total,
      };
}
