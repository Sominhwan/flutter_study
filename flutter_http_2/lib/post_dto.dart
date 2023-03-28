// post_dto.dart

// 테이블 용
class PostDTOTable {
  int id;
  String name;
  String email;

  PostDTOTable({required this.id, required this.name, required this.email});

  factory PostDTOTable.fromJson(dynamic json) =>
      PostDTOTable(
        id: json["id"],
        name: json["name"],
        email: json["email"],
      );
  static List<PostDTOTable> fromJsonList(List jsonList){
    return jsonList.map((json) => PostDTOTable.fromJson(json)).toList();
  }
}
// 상세 페이지 용
class PostDTODetail {
  int id;
  String name;
  String email;
  String body;

  PostDTODetail({required this.id,
    required this.name,
    required this.email,
    required this.body,
  });
}
