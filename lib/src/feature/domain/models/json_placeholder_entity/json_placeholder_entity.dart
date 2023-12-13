import 'package:json_annotation/json_annotation.dart';

part 'json_placeholder_entity.g.dart';

@JsonSerializable()
class Post {
  @JsonKey(name: 'userId')
  final int userID;
  final int id;
  final String title;
  final String body;

  Post(
      {required this.userID,
      required this.id,
      required this.title,
      required this.body});
}
