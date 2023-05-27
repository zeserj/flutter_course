part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<Picture>[]) List<Picture> images,
    @Default(<Picture>[]) List<Picture> favoriteImages,
    @Default(false) bool isLoading,
    @Default(true) bool hasMore,
    @Default('photos') String query,
    @Default(1) int page,
    String? selectedPictureId,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
