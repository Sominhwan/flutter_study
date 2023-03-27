// third_page.dart

// 객체 리스틀 받아서 화면 구성
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 파싱된 데이터
    List<Post> postList = [
      Post(userId: 0, id: 0, title: "제목1", body: "내용1"),
      Post(userId: 1, id: 1, title: "제목2", body: "내용2"),
    ];

    // map 에서 이용할 요소를 바꾸는 함수
    final change = (Post post){
      return Row(
        children: [
          Text("유저번호 : ${post.userId} | "),
          Text("글번호 : ${post.id} | "),
          Text("제목 : ${post.title} | "),
          Text("내용 : ${post.body}"),
        ],
      );
    };


    return Scaffold(
      body: SafeArea(
          child: Column(
            children: postList.map(change).toList(),
          )),
    );
  }
}

class Post {
  int userId;
  int id;
  String title;
  String body;

  Post({required this.userId, required this.id, required this.title, required this.body});
}

void main(){
  Post post1 = new Post(
      userId: 0,
      id: 0,
      title: "title",
      body: "conetent"
  );
}