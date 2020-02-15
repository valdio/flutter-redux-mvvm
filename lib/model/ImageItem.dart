import 'package:flutter_redux_mvvm/model/Category.dart';
import 'package:flutter_redux_mvvm/model/Tag.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ImageItem.g.dart';

@JsonSerializable()
class ImageItem {
  int id;
  String imageUrl;
  int likes;
  int imageWidth;
  int imageHeight;
  List<Tag> tags;
  Category category;

  ImageItem(this.id, this.imageUrl, this.likes, this.imageWidth, this.imageHeight, this.tags, this.category);

  factory ImageItem.fromJson(Map<String, dynamic> json) => _$ImageItemFromJson(json);

  Map<String, dynamic> toJson() => _$ImageItemToJson(this);
}