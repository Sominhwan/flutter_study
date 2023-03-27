// post_dto.dart

// 테이블 용
class PostDTOTable {
  int id;
  String name;
  String email;
  PostDTOTable({required this.id, required this.name, required this.email});
}

// 상세 페이지 용
class PostDTODetail {
  int id;
  String name;
  String email;

  PostDTODetail(
      {required this.id,
        required this.name,
        required this.email,
       });
}
