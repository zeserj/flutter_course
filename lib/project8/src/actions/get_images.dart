part of 'index.dart';

@freezed
class GetImages with _$GetImages {
  const factory GetImages.start({String? query, required int page}) = GetImagesStart;

  const factory GetImages.successful(List<Picture> images) = GetImagesSuccessful;

  const factory GetImages.error(Object error, StackTrace stackTrace) = GetImagesError;
}
