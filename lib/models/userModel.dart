import 'package:json_annotation/json_annotation.dart';

part 'userModel.g.dart';

@JsonSerializable()
class UserModel {
  UserModel();

  late num id;
  late String username;
  late bool is_admin;
  late String token;
  
  factory UserModel.fromJson(Map<String,dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
