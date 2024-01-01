import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'json_placeholder_entity.g.dart';

List<PostEntity> postListEntityDataFromString(String jsonString) =>
    List<PostEntity>.from(
        json.decode(jsonString).map((e) => PostEntity.fromJson(e)));

@JsonSerializable()
class PostEntity {
  @JsonKey(name: 'userId')
  final int? userID;
  final int? id;
  final String? title;
  final String? body;

  PostEntity({
    this.userID,
    this.id,
    this.title,
    this.body,
  });

  factory PostEntity.fromJson(Map<String, dynamic> json) =>
      _$PostEntityFromJson(json);
  Map<String, dynamic> toJson() => _$PostEntityToJson(this);
}
