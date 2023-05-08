part of 'index.dart';

@freezed
class Picture with _$Picture {
  const factory Picture({
    required String id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'promoted_at') DateTime? promotedAt,
    int? width,
    int? height,
    String? color,
    @JsonKey(name: 'blur_hash') String? blurHash,
    String? description,
    @JsonKey(name: 'alt_description') String? altDescription,
    required Urls urls,
    Links? links,
    int? likes,
    @JsonKey(name: 'liked_by_user') bool? likedByUser,
    @JsonKey(name: 'current_user_collections') List<dynamic>? currentUserCollections,
    String? sponsorship,
    required User user,
  }) = Picture$;

  factory Picture.fromJson(Map<dynamic, dynamic> json) => _$PictureFromJson(Map<String, dynamic>.from(json));
}

@freezed
class Urls with _$Urls {
  const factory Urls({
    required String raw,
    required String full,
    required String regular,
    required String small,
    required String thumb,
    @JsonKey(name: 'small_s3') required String smallS3,
  }) = Urls$;

  factory Urls.fromJson(Map<dynamic, dynamic> json) => _$UrlsFromJson(Map<String, dynamic>.from(json));
}

@freezed
class Links with _$Links {
  const factory Links({
    String? self,
    String? html,
    String? download,
    @JsonKey(name: 'download_location') String? downloadLocation,
    String? photos,
    String? likes,
    String? portfolio,
    String? following,
    String? followers,
  }) = Links$;

  factory Links.fromJson(Map<dynamic, dynamic> json) => _$LinksFromJson(Map<String, dynamic>.from(json));
}

@freezed
class User with _$User {
  const factory User({
    required String id,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    required String username,
    String? name,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'twitter_username') String? twitterUsername,
    @JsonKey(name: 'portfolio_url') String? portfolioUrl,
    String? bio,
    String? location,
    Links? links,
    @JsonKey(name: 'profile_image') required ProfileImage profileImage,
    @JsonKey(name: 'instagram_username') String? instagramUsername,
    int? totalCollections,
    int? totalLikes,
    int? totalPhotos,
    bool? acceptedTos,
    bool? forHire,
    Social? social,
  }) = User$;

  factory User.fromJson(Map<dynamic, dynamic> json) => _$UserFromJson(Map<String, dynamic>.from(json));
}

@freezed
class ProfileImage with _$ProfileImage {
  const factory ProfileImage({
    required String small,
    required String medium,
    required String large,
  }) = ProfileImage$;

  factory ProfileImage.fromJson(Map<dynamic, dynamic> json) => _$ProfileImageFromJson(Map<String, dynamic>.from(json));
}

@freezed
class Social with _$Social {
  const factory Social({
    @JsonKey(name: 'instagram_username') String? instagramUsername,
    @JsonKey(name: 'portfolio_url') String? portfolioUrl,
    @JsonKey(name: 'twitter_username') String? twitterUsername,
    @JsonKey(name: 'paypal_email') String? paypalEmail,
  }) = Social$;

  factory Social.fromJson(Map<dynamic, dynamic> json) => _$SocialFromJson(Map<String, dynamic>.from(json));
}
