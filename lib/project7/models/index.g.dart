// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      images: (json['images'] as List<dynamic>?)?.map((e) => Picture.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Picture>[],
      isLoading: json['isLoading'] as bool? ?? false,
      hasMore: json['hasMore'] as bool? ?? true,
      query: json['query'] as String? ?? 'photos',
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'images': instance.images,
      'isLoading': instance.isLoading,
      'hasMore': instance.hasMore,
      'query': instance.query,
      'page': instance.page,
    };

_$Picture$ _$$Picture$FromJson(Map<String, dynamic> json) => _$Picture$(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
      promotedAt: json['promoted_at'] == null ? null : DateTime.parse(json['promoted_at'] as String),
      width: json['width'] as int?,
      height: json['height'] as int?,
      color: json['color'] as String?,
      blurHash: json['blur_hash'] as String?,
      description: json['description'] as String?,
      altDescription: json['alt_description'] as String?,
      urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
      links: json['links'] == null ? null : Links.fromJson(json['links'] as Map<String, dynamic>),
      likes: json['likes'] as int?,
      likedByUser: json['liked_by_user'] as bool?,
      currentUserCollections: json['current_user_collections'] as List<dynamic>?,
      sponsorship: json['sponsorship'] as String?,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Picture$ToJson(_$Picture$ instance) => <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'promoted_at': instance.promotedAt?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blur_hash': instance.blurHash,
      'description': instance.description,
      'alt_description': instance.altDescription,
      'urls': instance.urls,
      'links': instance.links,
      'likes': instance.likes,
      'liked_by_user': instance.likedByUser,
      'current_user_collections': instance.currentUserCollections,
      'sponsorship': instance.sponsorship,
      'user': instance.user,
    };

_$Urls$ _$$Urls$FromJson(Map<String, dynamic> json) => _$Urls$(
      raw: json['raw'] as String,
      full: json['full'] as String,
      regular: json['regular'] as String,
      small: json['small'] as String,
      thumb: json['thumb'] as String,
      smallS3: json['small_s3'] as String,
    );

Map<String, dynamic> _$$Urls$ToJson(_$Urls$ instance) => <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
      'small_s3': instance.smallS3,
    };

_$Links$ _$$Links$FromJson(Map<String, dynamic> json) => _$Links$(
      self: json['self'] as String?,
      html: json['html'] as String?,
      download: json['download'] as String?,
      downloadLocation: json['download_location'] as String?,
      photos: json['photos'] as String?,
      likes: json['likes'] as String?,
      portfolio: json['portfolio'] as String?,
      following: json['following'] as String?,
      followers: json['followers'] as String?,
    );

Map<String, dynamic> _$$Links$ToJson(_$Links$ instance) => <String, dynamic>{
      'self': instance.self,
      'html': instance.html,
      'download': instance.download,
      'download_location': instance.downloadLocation,
      'photos': instance.photos,
      'likes': instance.likes,
      'portfolio': instance.portfolio,
      'following': instance.following,
      'followers': instance.followers,
    };

_$User$ _$$User$FromJson(Map<String, dynamic> json) => _$User$(
      id: json['id'] as String,
      updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
      username: json['username'] as String,
      name: json['name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      portfolioUrl: json['portfolio_url'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      links: json['links'] == null ? null : Links.fromJson(json['links'] as Map<String, dynamic>),
      profileImage:
          json['profile_image'] == null ? null : ProfileImage.fromJson(json['profile_image'] as Map<String, dynamic>),
      instagramUsername: json['instagram_username'] as String?,
      totalCollections: json['totalCollections'] as int?,
      totalLikes: json['totalLikes'] as int?,
      totalPhotos: json['totalPhotos'] as int?,
      acceptedTos: json['acceptedTos'] as bool?,
      forHire: json['forHire'] as bool?,
      social: json['social'] == null ? null : Social.fromJson(json['social'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$User$ToJson(_$User$ instance) => <String, dynamic>{
      'id': instance.id,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'username': instance.username,
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'twitter_username': instance.twitterUsername,
      'portfolio_url': instance.portfolioUrl,
      'bio': instance.bio,
      'location': instance.location,
      'links': instance.links,
      'profile_image': instance.profileImage,
      'instagram_username': instance.instagramUsername,
      'totalCollections': instance.totalCollections,
      'totalLikes': instance.totalLikes,
      'totalPhotos': instance.totalPhotos,
      'acceptedTos': instance.acceptedTos,
      'forHire': instance.forHire,
      'social': instance.social,
    };

_$ProfileImage$ _$$ProfileImage$FromJson(Map<String, dynamic> json) => _$ProfileImage$(
      small: json['small'] as String?,
      medium: json['medium'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$$ProfileImage$ToJson(_$ProfileImage$ instance) => <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };

_$Social$ _$$Social$FromJson(Map<String, dynamic> json) => _$Social$(
      instagramUsername: json['instagram_username'] as String?,
      portfolioUrl: json['portfolio_url'] as String?,
      twitterUsername: json['twitter_username'] as String?,
      paypalEmail: json['paypal_email'] as String?,
    );

Map<String, dynamic> _$$Social$ToJson(_$Social$ instance) => <String, dynamic>{
      'instagram_username': instance.instagramUsername,
      'portfolio_url': instance.portfolioUrl,
      'twitter_username': instance.twitterUsername,
      'paypal_email': instance.paypalEmail,
    };
