// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SettingsData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsData _$SettingsDataFromJson(Map<String, dynamic> json) {
  return SettingsData()
    ..darkModeEnabled = json['darkModeEnabled'] as bool
    ..randomNumber = json['randomNumber'] as int;
}

Map<String, dynamic> _$SettingsDataToJson(SettingsData instance) =>
    <String, dynamic>{
      'darkModeEnabled': instance.darkModeEnabled,
      'randomNumber': instance.randomNumber,
    };
