// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_placeholder_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostEntity _$PostEntityFromJson(Map<String, dynamic> json) => PostEntity(
      userID: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$PostEntityToJson(PostEntity instance) => <String, dynamic>{
      'userId': instance.userID,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
