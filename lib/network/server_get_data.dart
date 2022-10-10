import 'dart:convert';
import 'dart:developer';

import 'package:getx_part1/model/get_model.dart';
import 'package:http/http.dart' as http;

class ServerGetData {
  Future<List<GetModel>?> getData() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      return getModelFromJson(response.body);
    } else {
      return null;
    }
  }
}
