part of 'index.dart';

@freezed
class SetSelectedImage with _$SetSelectedImage {
  const factory SetSelectedImage(String pictureId) = SetSelectedImage$;
}

@freezed
class SetFavoriteImage with _$SetFavoriteImage {
  const factory SetFavoriteImage(Picture picture, {required bool addFavorite}) = SetFavoriteImage$;
}
