// list_page.dart

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http_1/post/controller/post_table_controller.dart';
import 'package:flutter_http_1/post/model/dto/post_dto.dart';
import 'package:flutter_http_1/post/model/repository/post_repository.dart';
import 'package:flutter_http_1/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class ListPage extends HookWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final listState = useState<List<PostDTOTable>?>(null);
    final controller = context.watch<PostTableController>();
    useEffect(() {
      controller.setPostDTOTableList();
    }, []);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: controller.postDTOTableList?.map((e) => ListItem(postDTOTable: e)).toList() ?? [],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  PostDTOTable postDTOTable;

  ListItem({Key? key, required this.postDTOTable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.detail);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
        ),
        child: Column(
          children: [
            Text("유저번호 : ${postDTOTable.userId}"),
            Divider(),
            Text("글 번호 : ${postDTOTable.id}"),
            Divider(),
            Text("글 제목 : ${postDTOTable.title}"),
          ],
        ),
      ),
    );
  }
}
