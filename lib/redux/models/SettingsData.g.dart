// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SettingsData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsData _$SettingsDataFromJson(Map<String, dynamic> json) {
  return SettingsData(
    darkModeEnabled: json['darkModeEnabled'] as bool,
    progressPercentage: json['progressPercentage'] as int,
  );
}

Map<String, dynamic> _$SettingsDataToJson(SettingsData instance) =>
    <String, dynamic>{
      'darkModeEnabled': instance.darkModeEnabled,
      'progressPercentage': instance.progressPercentage,
    };
