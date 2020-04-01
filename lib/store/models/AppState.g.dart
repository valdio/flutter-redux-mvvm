// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppState.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState(
    galleryData: json['galleryData'] == null
        ? null
        : GalleryData.fromJson(json['galleryData'] as Map<String, dynamic>),
    settingsData: json['settingsData'] == null
        ? null
        : SettingsData.fromJson(json['settingsData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
      'galleryData': instance.galleryData,
      'settingsData': instance.settingsData,
    };
