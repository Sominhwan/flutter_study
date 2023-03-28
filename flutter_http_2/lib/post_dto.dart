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
}

// 상세 페이지 용
class PostDTODetail {
  int id;
  String name;
  String email;

  PostDTODetail({required this.id,
    required this.name,
    required this.email,
  });
}
