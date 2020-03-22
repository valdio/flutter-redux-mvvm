import 'package:json_annotation/json_annotation.dart';

part 'GalleryData.g.dart';

@JsonSerializable()
class GalleryData {
  int id;

  GalleryData({this.id});

  factory GalleryData.fromJson(Map<String, dynamic> json) => _$GalleryDataFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryDataToJson(this);
}