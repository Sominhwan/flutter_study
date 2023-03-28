// post_dto.dart

// 테이블 용
class PostDTOTable {
  int userId; // 유저 번호
  int id; // 글 번호
  String title;
  PostDTOTable({required this.userId, required this.id, required this.title});

  // 팩토리
  // 생성자를 통해서 객체를 만들려고 하는데
  // 처리가 번거로울 경우
  // 어떠한 타입을 받아서 DTO 클래스 내부에서 처리해서 생성해서
  // 리턴 해주기 위함
  factory PostDTOTable.fromJson(dynamic json) => PostDTOTable(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
  );
}

// 상세 페이지 용
class PostDTODetail {
  int userId;
  int id;
  String title;
  String body;

  PostDTODetail(
      {required this.userId,
        required this.id,
        required this.title,
        required this.body});
}
