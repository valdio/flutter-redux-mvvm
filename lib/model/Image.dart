import 'package:flutter_redux_mvvm/model/Category.dart';
import 'package:flutter_redux_mvvm/model/Tag.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Image.g.dart';

@JsonSerializable()
class Image {
  int id;
  String imageUrl;
  int likes;
  int imageWidth;
  int imageHeight;
  List<Tag> tags;
  Category category;

  Image(this.id, this.imageUrl, this.likes, this.imageWidth, this.imageHeight, this.tags, this.category);

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}