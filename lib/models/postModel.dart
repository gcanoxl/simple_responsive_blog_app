import 'package:json_annotation/json_annotation.dart';

part 'postModel.g.dart';

@JsonSerializable()
class PostModel {
  PostModel();

  late num id;
  late String title;
  late String content;
  late num views;
  
  factory PostModel.fromJson(Map<String,dynamic> json) => _$PostModelFromJson(json);
  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
