import 'package:json_annotation/json_annotation.dart';

part 'SettingsData.g.dart';

@JsonSerializable()
class SettingsData {
  bool darkModeEnabled;
  int progressPercentage;

  SettingsData({this.darkModeEnabled, this.progressPercentage});

  factory SettingsData.fromJson(Map<String, dynamic> json) =>
      _$SettingsDataFromJson(json);

  Map<String, dynamic> toJson() => _$SettingsDataToJson(this);
}
