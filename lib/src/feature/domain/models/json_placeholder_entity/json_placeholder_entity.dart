import 'package:json_annotation/json_annotation.dart';

part 'json_placeholder_entity.g.dart';

@JsonSerializable()
class PostEntity {
  @JsonKey(name: 'userId')
  final int userID;
  final int id;
  final String title;
  final String body;

  PostEntity(
      {required this.userID,
      required this.id,
      required this.title,
      required this.body});

  factory PostEntity.fromJson(Map<String, dynamic> json) => _$PostEntityFromJson(json);
  Map<String, dynamic> toJson() => _$PostEntityToJson(this);
}
