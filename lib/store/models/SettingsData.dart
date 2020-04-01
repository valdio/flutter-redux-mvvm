import 'package:json_annotation/json_annotation.dart';

part 'SettingsData.g.dart';

@JsonSerializable()
class SettingsData {
  bool darkModeEnabled;
  int randomNumber;

  /// https://dart.dev/guides/language/language-tour#factory-constructors
  /// Use the factory keyword when implementing a constructor that doesn’t always create a new instance of its class.
  /// For example, a factory constructor might return an instance from a cache, or it might return an instance of a subtype.

  factory SettingsData() {
    return _singleton;
  }

  SettingsData._internal();

  static final SettingsData _singleton = SettingsData._internal();

  factory SettingsData.fromJson(Map<String, dynamic> json) =>
      _$SettingsDataFromJson(json);

  Map<String, dynamic> toJson() => _$SettingsDataToJson(this);
}
