// To parse this JSON data, do
//
//     final getModel = getModelFromJson(jsonString);

import 'dart:convert';

List<GetModel> getModelFromJson(String str) =>
    List<GetModel>.from(json.decode(str).map((x) => GetModel.fromJson(x)));

String getModelToJson(List<GetModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetModel {
  GetModel({
     this.userId,
     this.id,
    this.title,
    this.body,

  });

  int? userId;
  int? id;
  String? title;
  String? body;


  factory GetModel.fromJson(Map<String, dynamic> json) => GetModel(
        userId: json["userId"] == null ? null : json["userId"],
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        body: json["body"] == null ? null : json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId == null ? null : userId,
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "body": body == null ? null : body,
      };
}
