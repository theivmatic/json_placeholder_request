// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_placeholder_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      userID: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'userId': instance.userID,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
