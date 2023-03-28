import 'dart:convert';

import 'package:flutter_http_2/post_dto.dart';
import 'package:http/http.dart' as http;

class PostRepository{
  static PostRepository? _instance;

  PostRepository._();

  static PostRepository get instance => _instance ??= PostRepository._();

  Future<List<PostDTOTable>?> getDTOList () async{
    String url = "https://jsonplaceholder.typicode.com/posts";

    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      return PostDTOTable.fromJsonList(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}