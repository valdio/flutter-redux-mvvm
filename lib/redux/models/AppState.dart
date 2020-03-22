import 'package:flutter_redux_mvvm/redux/models/GalleryData.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'AppState.g.dart';

@JsonSerializable()
@immutable
class AppState {
  GalleryData galleryData;

  AppState(
      {this.galleryData});

  factory AppState.loading() => AppState();

  @override
  int get hashCode => galleryData.hashCode;
//      placeData.hashCode ^
//      eventData.hashCode ^
//      searchResult.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AppState &&
              runtimeType == other.runtimeType &&
              galleryData == other.galleryData;

  @override
  String toString() {
    return 'AppState{galleryData: $galleryData}';
  }

  Map<String, dynamic> toJson() => _$AppStateToJson(this);

  static AppState fromJson(dynamic json) => _$AppStateFromJson(json ?? {});


}
