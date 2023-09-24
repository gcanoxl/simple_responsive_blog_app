// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel()
  ..id = json['id'] as num
  ..username = json['username'] as String
  ..is_admin = json['is_admin'] as bool
  ..token = json['token'] as String;

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'is_admin': instance.is_admin,
      'token': instance.token,
    };
