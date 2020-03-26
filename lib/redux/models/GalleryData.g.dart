// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GalleryData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryData _$GalleryDataFromJson(Map<String, dynamic> json) {
  return GalleryData(
    galleryImages: (json['galleryImages'] as List)
        ?.map((e) =>
            e == null ? null : ImageItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GalleryDataToJson(GalleryData instance) =>
    <String, dynamic>{
      'galleryImages': instance.galleryImages,
    };
