import 'package:flutter_redux_mvvm/store/models/SettingsData.dart';

import './GalleryData.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'AppState.g.dart';

@JsonSerializable()
@immutable
class AppState {
  GalleryData galleryData;
  SettingsData settingsData;

  AppState({this.galleryData, this.settingsData});

  factory AppState.loading() => AppState();

  @override
  int get hashCode => galleryData.hashCode ^ settingsData.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          galleryData == other.galleryData &&
          settingsData == other.settingsData;

  @override
  String toString() {
    return 'AppState{galleryData: $galleryData, settingsData: $settingsData, }';
  }

  Map<String, dynamic> toJson() => _$AppStateToJson(this);

  static AppState fromJson(dynamic json) => _$AppStateFromJson(json ?? {});
}
