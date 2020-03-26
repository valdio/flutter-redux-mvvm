import 'package:flutter_redux_mvvm/models/ImageItem.dart';
import 'package:json_annotation/json_annotation.dart';

part 'GalleryData.g.dart';

@JsonSerializable()
class GalleryData {
  List<ImageItem> galleryImages;

  GalleryData({this.galleryImages});

  factory GalleryData.fromJson(Map<String, dynamic> json) => _$GalleryDataFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryDataToJson(this);
}