import 'package:json_annotation/json_annotation.dart';

part 'Tag.g.dart';

@JsonSerializable()
class Tag {
  int id;
  String name;
  String description;
  String slug;

  Tag({this.id, this.name, this.description, this.slug});

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  Map<String, dynamic> toJson() => _$TagToJson(this);

}