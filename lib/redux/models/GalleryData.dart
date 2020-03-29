import 'package:flutter_redux_mvvm/models/ImageItem.dart';
import 'package:json_annotation/json_annotation.dart';

part 'GalleryData.g.dart';

@JsonSerializable()
class GalleryData {
  List<ImageItem> galleryImages;

  factory GalleryData() {
    return _singleton;
  }

  GalleryData._internal();

  static final GalleryData _singleton = GalleryData._internal();

  factory GalleryData.fromJson(Map<String, dynamic> json) =>
      _$GalleryDataFromJson(json);

  Map<String, dynamic> toJson() => _$GalleryDataToJson(this);
}
