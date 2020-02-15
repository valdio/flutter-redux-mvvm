// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ImageItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageItem _$ImageItemFromJson(Map<String, dynamic> json) {
  return ImageItem(
    json['id'] as int,
    json['imageUrl'] as String,
    json['likes'] as int,
    json['imageWidth'] as int,
    json['imageHeight'] as int,
    (json['tags'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['category'] == null
        ? null
        : Category.fromJson(json['category'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImageItemToJson(ImageItem instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'likes': instance.likes,
      'imageWidth': instance.imageWidth,
      'imageHeight': instance.imageHeight,
      'tags': instance.tags,
      'category': instance.category,
    };
