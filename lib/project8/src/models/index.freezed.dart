// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  List<Picture> get images => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({List<Picture> images, bool isLoading, bool hasMore, String query, int page});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? isLoading = null,
    Object? hasMore = null,
    Object? query = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Picture>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(_$AppState$ value, $Res Function(_$AppState$) then) = __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Picture> images, bool isLoading, bool hasMore, String query, int page});
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(_$AppState$ _value, $Res Function(_$AppState$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? isLoading = null,
    Object? hasMore = null,
    Object? query = null,
    Object? page = null,
  }) {
    return _then(_$AppState$(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Picture>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {final List<Picture> images = const <Picture>[],
      this.isLoading = false,
      this.hasMore = true,
      this.query = 'photos',
      this.page = 1})
      : _images = images;

  factory _$AppState$.fromJson(Map<String, dynamic> json) => _$$AppState$FromJson(json);

  final List<Picture> _images;
  @override
  @JsonKey()
  List<Picture> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'AppState(images: $images, isLoading: $isLoading, hasMore: $hasMore, query: $query, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images), isLoading, hasMore, query, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith => __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final List<Picture> images,
      final bool isLoading,
      final bool hasMore,
      final String query,
      final int page}) = _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  List<Picture> get images;
  @override
  bool get isLoading;
  @override
  bool get hasMore;
  @override
  String get query;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith => throw _privateConstructorUsedError;
}

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return Picture$.fromJson(json);
}

/// @nodoc
mixin _$Picture {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'promoted_at')
  DateTime? get promotedAt => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'blur_hash')
  String? get blurHash => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt_description')
  String? get altDescription => throw _privateConstructorUsedError;
  Urls get urls => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'liked_by_user')
  bool? get likedByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_user_collections')
  List<dynamic>? get currentUserCollections => throw _privateConstructorUsedError;
  String? get sponsorship => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureCopyWith<Picture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureCopyWith<$Res> {
  factory $PictureCopyWith(Picture value, $Res Function(Picture) then) = _$PictureCopyWithImpl<$Res, Picture>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'promoted_at') DateTime? promotedAt,
      int? width,
      int? height,
      String? color,
      @JsonKey(name: 'blur_hash') String? blurHash,
      String? description,
      @JsonKey(name: 'alt_description') String? altDescription,
      Urls urls,
      Links? links,
      int? likes,
      @JsonKey(name: 'liked_by_user') bool? likedByUser,
      @JsonKey(name: 'current_user_collections') List<dynamic>? currentUserCollections,
      String? sponsorship,
      User user});

  $UrlsCopyWith<$Res> get urls;
  $LinksCopyWith<$Res>? get links;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$PictureCopyWithImpl<$Res, $Val extends Picture> implements $PictureCopyWith<$Res> {
  _$PictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? promotedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? urls = null,
    Object? links = freezed,
    Object? likes = freezed,
    Object? likedByUser = freezed,
    Object? currentUserCollections = freezed,
    Object? sponsorship = freezed,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promotedAt: freezed == promotedAt
          ? _value.promotedAt
          : promotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likedByUser: freezed == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentUserCollections: freezed == currentUserCollections
          ? _value.currentUserCollections
          : currentUserCollections // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      sponsorship: freezed == sponsorship
          ? _value.sponsorship
          : sponsorship // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res> get urls {
    return $UrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Picture$CopyWith<$Res> implements $PictureCopyWith<$Res> {
  factory _$$Picture$CopyWith(_$Picture$ value, $Res Function(_$Picture$) then) = __$$Picture$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'promoted_at') DateTime? promotedAt,
      int? width,
      int? height,
      String? color,
      @JsonKey(name: 'blur_hash') String? blurHash,
      String? description,
      @JsonKey(name: 'alt_description') String? altDescription,
      Urls urls,
      Links? links,
      int? likes,
      @JsonKey(name: 'liked_by_user') bool? likedByUser,
      @JsonKey(name: 'current_user_collections') List<dynamic>? currentUserCollections,
      String? sponsorship,
      User user});

  @override
  $UrlsCopyWith<$Res> get urls;
  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$Picture$CopyWithImpl<$Res> extends _$PictureCopyWithImpl<$Res, _$Picture$>
    implements _$$Picture$CopyWith<$Res> {
  __$$Picture$CopyWithImpl(_$Picture$ _value, $Res Function(_$Picture$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? promotedAt = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? color = freezed,
    Object? blurHash = freezed,
    Object? description = freezed,
    Object? altDescription = freezed,
    Object? urls = null,
    Object? links = freezed,
    Object? likes = freezed,
    Object? likedByUser = freezed,
    Object? currentUserCollections = freezed,
    Object? sponsorship = freezed,
    Object? user = null,
  }) {
    return _then(_$Picture$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promotedAt: freezed == promotedAt
          ? _value.promotedAt
          : promotedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      blurHash: freezed == blurHash
          ? _value.blurHash
          : blurHash // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      likedByUser: freezed == likedByUser
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentUserCollections: freezed == currentUserCollections
          ? _value._currentUserCollections
          : currentUserCollections // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      sponsorship: freezed == sponsorship
          ? _value.sponsorship
          : sponsorship // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Picture$ implements Picture$ {
  const _$Picture$(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'promoted_at') this.promotedAt,
      this.width,
      this.height,
      this.color,
      @JsonKey(name: 'blur_hash') this.blurHash,
      this.description,
      @JsonKey(name: 'alt_description') this.altDescription,
      required this.urls,
      this.links,
      this.likes,
      @JsonKey(name: 'liked_by_user') this.likedByUser,
      @JsonKey(name: 'current_user_collections') final List<dynamic>? currentUserCollections,
      this.sponsorship,
      required this.user})
      : _currentUserCollections = currentUserCollections;

  factory _$Picture$.fromJson(Map<String, dynamic> json) => _$$Picture$FromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'promoted_at')
  final DateTime? promotedAt;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? color;
  @override
  @JsonKey(name: 'blur_hash')
  final String? blurHash;
  @override
  final String? description;
  @override
  @JsonKey(name: 'alt_description')
  final String? altDescription;
  @override
  final Urls urls;
  @override
  final Links? links;
  @override
  final int? likes;
  @override
  @JsonKey(name: 'liked_by_user')
  final bool? likedByUser;
  final List<dynamic>? _currentUserCollections;
  @override
  @JsonKey(name: 'current_user_collections')
  List<dynamic>? get currentUserCollections {
    final value = _currentUserCollections;
    if (value == null) return null;
    if (_currentUserCollections is EqualUnmodifiableListView) return _currentUserCollections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? sponsorship;
  @override
  final User user;

  @override
  String toString() {
    return 'Picture(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, promotedAt: $promotedAt, width: $width, height: $height, color: $color, blurHash: $blurHash, description: $description, altDescription: $altDescription, urls: $urls, links: $links, likes: $likes, likedByUser: $likedByUser, currentUserCollections: $currentUserCollections, sponsorship: $sponsorship, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Picture$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.promotedAt, promotedAt) || other.promotedAt == promotedAt) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.blurHash, blurHash) || other.blurHash == blurHash) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.altDescription, altDescription) || other.altDescription == altDescription) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.likedByUser, likedByUser) || other.likedByUser == likedByUser) &&
            const DeepCollectionEquality().equals(other._currentUserCollections, _currentUserCollections) &&
            (identical(other.sponsorship, sponsorship) || other.sponsorship == sponsorship) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      promotedAt,
      width,
      height,
      color,
      blurHash,
      description,
      altDescription,
      urls,
      links,
      likes,
      likedByUser,
      const DeepCollectionEquality().hash(_currentUserCollections),
      sponsorship,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Picture$CopyWith<_$Picture$> get copyWith => __$$Picture$CopyWithImpl<_$Picture$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Picture$ToJson(
      this,
    );
  }
}

abstract class Picture$ implements Picture {
  const factory Picture$(
      {required final String id,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'promoted_at') final DateTime? promotedAt,
      final int? width,
      final int? height,
      final String? color,
      @JsonKey(name: 'blur_hash') final String? blurHash,
      final String? description,
      @JsonKey(name: 'alt_description') final String? altDescription,
      required final Urls urls,
      final Links? links,
      final int? likes,
      @JsonKey(name: 'liked_by_user') final bool? likedByUser,
      @JsonKey(name: 'current_user_collections') final List<dynamic>? currentUserCollections,
      final String? sponsorship,
      required final User user}) = _$Picture$;

  factory Picture$.fromJson(Map<String, dynamic> json) = _$Picture$.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'promoted_at')
  DateTime? get promotedAt;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get color;
  @override
  @JsonKey(name: 'blur_hash')
  String? get blurHash;
  @override
  String? get description;
  @override
  @JsonKey(name: 'alt_description')
  String? get altDescription;
  @override
  Urls get urls;
  @override
  Links? get links;
  @override
  int? get likes;
  @override
  @JsonKey(name: 'liked_by_user')
  bool? get likedByUser;
  @override
  @JsonKey(name: 'current_user_collections')
  List<dynamic>? get currentUserCollections;
  @override
  String? get sponsorship;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$Picture$CopyWith<_$Picture$> get copyWith => throw _privateConstructorUsedError;
}

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return Urls$.fromJson(json);
}

/// @nodoc
mixin _$Urls {
  String get raw => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'small_s3')
  String get smallS3 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) = _$UrlsCopyWithImpl<$Res, Urls>;
  @useResult
  $Res call(
      {String raw, String full, String regular, String small, String thumb, @JsonKey(name: 'small_s3') String smallS3});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res, $Val extends Urls> implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
    Object? smallS3 = null,
  }) {
    return _then(_value.copyWith(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      smallS3: null == smallS3
          ? _value.smallS3
          : smallS3 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Urls$CopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$$Urls$CopyWith(_$Urls$ value, $Res Function(_$Urls$) then) = __$$Urls$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String raw, String full, String regular, String small, String thumb, @JsonKey(name: 'small_s3') String smallS3});
}

/// @nodoc
class __$$Urls$CopyWithImpl<$Res> extends _$UrlsCopyWithImpl<$Res, _$Urls$> implements _$$Urls$CopyWith<$Res> {
  __$$Urls$CopyWithImpl(_$Urls$ _value, $Res Function(_$Urls$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
    Object? smallS3 = null,
  }) {
    return _then(_$Urls$(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      smallS3: null == smallS3
          ? _value.smallS3
          : smallS3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Urls$ implements Urls$ {
  const _$Urls$(
      {required this.raw,
      required this.full,
      required this.regular,
      required this.small,
      required this.thumb,
      @JsonKey(name: 'small_s3') required this.smallS3});

  factory _$Urls$.fromJson(Map<String, dynamic> json) => _$$Urls$FromJson(json);

  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;
  @override
  @JsonKey(name: 'small_s3')
  final String smallS3;

  @override
  String toString() {
    return 'Urls(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb, smallS3: $smallS3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Urls$ &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.smallS3, smallS3) || other.smallS3 == smallS3));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, raw, full, regular, small, thumb, smallS3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Urls$CopyWith<_$Urls$> get copyWith => __$$Urls$CopyWithImpl<_$Urls$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Urls$ToJson(
      this,
    );
  }
}

abstract class Urls$ implements Urls {
  const factory Urls$(
      {required final String raw,
      required final String full,
      required final String regular,
      required final String small,
      required final String thumb,
      @JsonKey(name: 'small_s3') required final String smallS3}) = _$Urls$;

  factory Urls$.fromJson(Map<String, dynamic> json) = _$Urls$.fromJson;

  @override
  String get raw;
  @override
  String get full;
  @override
  String get regular;
  @override
  String get small;
  @override
  String get thumb;
  @override
  @JsonKey(name: 'small_s3')
  String get smallS3;
  @override
  @JsonKey(ignore: true)
  _$$Urls$CopyWith<_$Urls$> get copyWith => throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links$.fromJson(json);
}

/// @nodoc
mixin _$Links {
  String? get self => throw _privateConstructorUsedError;
  String? get html => throw _privateConstructorUsedError;
  String? get download => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_location')
  String? get downloadLocation => throw _privateConstructorUsedError;
  String? get photos => throw _privateConstructorUsedError;
  String? get likes => throw _privateConstructorUsedError;
  String? get portfolio => throw _privateConstructorUsedError;
  String? get following => throw _privateConstructorUsedError;
  String? get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) = _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call(
      {String? self,
      String? html,
      String? download,
      @JsonKey(name: 'download_location') String? downloadLocation,
      String? photos,
      String? likes,
      String? portfolio,
      String? following,
      String? followers});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links> implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? download = freezed,
    Object? downloadLocation = freezed,
    Object? photos = freezed,
    Object? likes = freezed,
    Object? portfolio = freezed,
    Object? following = freezed,
    Object? followers = freezed,
  }) {
    return _then(_value.copyWith(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadLocation: freezed == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Links$CopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$Links$CopyWith(_$Links$ value, $Res Function(_$Links$) then) = __$$Links$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? self,
      String? html,
      String? download,
      @JsonKey(name: 'download_location') String? downloadLocation,
      String? photos,
      String? likes,
      String? portfolio,
      String? following,
      String? followers});
}

/// @nodoc
class __$$Links$CopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res, _$Links$> implements _$$Links$CopyWith<$Res> {
  __$$Links$CopyWithImpl(_$Links$ _value, $Res Function(_$Links$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? self = freezed,
    Object? html = freezed,
    Object? download = freezed,
    Object? downloadLocation = freezed,
    Object? photos = freezed,
    Object? likes = freezed,
    Object? portfolio = freezed,
    Object? following = freezed,
    Object? followers = freezed,
  }) {
    return _then(_$Links$(
      self: freezed == self
          ? _value.self
          : self // ignore: cast_nullable_to_non_nullable
              as String?,
      html: freezed == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String?,
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadLocation: freezed == downloadLocation
          ? _value.downloadLocation
          : downloadLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as String?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Links$ implements Links$ {
  const _$Links$(
      {this.self,
      this.html,
      this.download,
      @JsonKey(name: 'download_location') this.downloadLocation,
      this.photos,
      this.likes,
      this.portfolio,
      this.following,
      this.followers});

  factory _$Links$.fromJson(Map<String, dynamic> json) => _$$Links$FromJson(json);

  @override
  final String? self;
  @override
  final String? html;
  @override
  final String? download;
  @override
  @JsonKey(name: 'download_location')
  final String? downloadLocation;
  @override
  final String? photos;
  @override
  final String? likes;
  @override
  final String? portfolio;
  @override
  final String? following;
  @override
  final String? followers;

  @override
  String toString() {
    return 'Links(self: $self, html: $html, download: $download, downloadLocation: $downloadLocation, photos: $photos, likes: $likes, portfolio: $portfolio, following: $following, followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Links$ &&
            (identical(other.self, self) || other.self == self) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.download, download) || other.download == download) &&
            (identical(other.downloadLocation, downloadLocation) || other.downloadLocation == downloadLocation) &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.portfolio, portfolio) || other.portfolio == portfolio) &&
            (identical(other.following, following) || other.following == following) &&
            (identical(other.followers, followers) || other.followers == followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, self, html, download, downloadLocation, photos, likes, portfolio, following, followers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Links$CopyWith<_$Links$> get copyWith => __$$Links$CopyWithImpl<_$Links$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Links$ToJson(
      this,
    );
  }
}

abstract class Links$ implements Links {
  const factory Links$(
      {final String? self,
      final String? html,
      final String? download,
      @JsonKey(name: 'download_location') final String? downloadLocation,
      final String? photos,
      final String? likes,
      final String? portfolio,
      final String? following,
      final String? followers}) = _$Links$;

  factory Links$.fromJson(Map<String, dynamic> json) = _$Links$.fromJson;

  @override
  String? get self;
  @override
  String? get html;
  @override
  String? get download;
  @override
  @JsonKey(name: 'download_location')
  String? get downloadLocation;
  @override
  String? get photos;
  @override
  String? get likes;
  @override
  String? get portfolio;
  @override
  String? get following;
  @override
  String? get followers;
  @override
  @JsonKey(ignore: true)
  _$$Links$CopyWith<_$Links$> get copyWith => throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return User$.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'portfolio_url')
  String? get portfolioUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  ProfileImage get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername => throw _privateConstructorUsedError;
  int? get totalCollections => throw _privateConstructorUsedError;
  int? get totalLikes => throw _privateConstructorUsedError;
  int? get totalPhotos => throw _privateConstructorUsedError;
  bool? get acceptedTos => throw _privateConstructorUsedError;
  bool? get forHire => throw _privateConstructorUsedError;
  Social? get social => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) = _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String username,
      String? name,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'portfolio_url') String? portfolioUrl,
      String? bio,
      String? location,
      Links? links,
      @JsonKey(name: 'profile_image') ProfileImage profileImage,
      @JsonKey(name: 'instagram_username') String? instagramUsername,
      int? totalCollections,
      int? totalLikes,
      int? totalPhotos,
      bool? acceptedTos,
      bool? forHire,
      Social? social});

  $LinksCopyWith<$Res>? get links;
  $ProfileImageCopyWith<$Res> get profileImage;
  $SocialCopyWith<$Res>? get social;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = freezed,
    Object? username = null,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? twitterUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? links = freezed,
    Object? profileImage = null,
    Object? instagramUsername = freezed,
    Object? totalCollections = freezed,
    Object? totalLikes = freezed,
    Object? totalPhotos = freezed,
    Object? acceptedTos = freezed,
    Object? forHire = freezed,
    Object? social = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImage,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCollections: freezed == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptedTos: freezed == acceptedTos
          ? _value.acceptedTos
          : acceptedTos // ignore: cast_nullable_to_non_nullable
              as bool?,
      forHire: freezed == forHire
          ? _value.forHire
          : forHire // ignore: cast_nullable_to_non_nullable
              as bool?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as Social?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileImageCopyWith<$Res> get profileImage {
    return $ProfileImageCopyWith<$Res>(_value.profileImage, (value) {
      return _then(_value.copyWith(profileImage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SocialCopyWith<$Res>? get social {
    if (_value.social == null) {
      return null;
    }

    return $SocialCopyWith<$Res>(_value.social!, (value) {
      return _then(_value.copyWith(social: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$User$CopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$User$CopyWith(_$User$ value, $Res Function(_$User$) then) = __$$User$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      String username,
      String? name,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'portfolio_url') String? portfolioUrl,
      String? bio,
      String? location,
      Links? links,
      @JsonKey(name: 'profile_image') ProfileImage profileImage,
      @JsonKey(name: 'instagram_username') String? instagramUsername,
      int? totalCollections,
      int? totalLikes,
      int? totalPhotos,
      bool? acceptedTos,
      bool? forHire,
      Social? social});

  @override
  $LinksCopyWith<$Res>? get links;
  @override
  $ProfileImageCopyWith<$Res> get profileImage;
  @override
  $SocialCopyWith<$Res>? get social;
}

/// @nodoc
class __$$User$CopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$User$> implements _$$User$CopyWith<$Res> {
  __$$User$CopyWithImpl(_$User$ _value, $Res Function(_$User$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = freezed,
    Object? username = null,
    Object? name = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? twitterUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? links = freezed,
    Object? profileImage = null,
    Object? instagramUsername = freezed,
    Object? totalCollections = freezed,
    Object? totalLikes = freezed,
    Object? totalPhotos = freezed,
    Object? acceptedTos = freezed,
    Object? forHire = freezed,
    Object? social = freezed,
  }) {
    return _then(_$User$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as ProfileImage,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCollections: freezed == totalCollections
          ? _value.totalCollections
          : totalCollections // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPhotos: freezed == totalPhotos
          ? _value.totalPhotos
          : totalPhotos // ignore: cast_nullable_to_non_nullable
              as int?,
      acceptedTos: freezed == acceptedTos
          ? _value.acceptedTos
          : acceptedTos // ignore: cast_nullable_to_non_nullable
              as bool?,
      forHire: freezed == forHire
          ? _value.forHire
          : forHire // ignore: cast_nullable_to_non_nullable
              as bool?,
      social: freezed == social
          ? _value.social
          : social // ignore: cast_nullable_to_non_nullable
              as Social?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$User$ implements User$ {
  const _$User$(
      {required this.id,
      @JsonKey(name: 'updated_at') this.updatedAt,
      required this.username,
      this.name,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'twitter_username') this.twitterUsername,
      @JsonKey(name: 'portfolio_url') this.portfolioUrl,
      this.bio,
      this.location,
      this.links,
      @JsonKey(name: 'profile_image') required this.profileImage,
      @JsonKey(name: 'instagram_username') this.instagramUsername,
      this.totalCollections,
      this.totalLikes,
      this.totalPhotos,
      this.acceptedTos,
      this.forHire,
      this.social});

  factory _$User$.fromJson(Map<String, dynamic> json) => _$$User$FromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final String username;
  @override
  final String? name;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'twitter_username')
  final String? twitterUsername;
  @override
  @JsonKey(name: 'portfolio_url')
  final String? portfolioUrl;
  @override
  final String? bio;
  @override
  final String? location;
  @override
  final Links? links;
  @override
  @JsonKey(name: 'profile_image')
  final ProfileImage profileImage;
  @override
  @JsonKey(name: 'instagram_username')
  final String? instagramUsername;
  @override
  final int? totalCollections;
  @override
  final int? totalLikes;
  @override
  final int? totalPhotos;
  @override
  final bool? acceptedTos;
  @override
  final bool? forHire;
  @override
  final Social? social;

  @override
  String toString() {
    return 'User(id: $id, updatedAt: $updatedAt, username: $username, name: $name, firstName: $firstName, lastName: $lastName, twitterUsername: $twitterUsername, portfolioUrl: $portfolioUrl, bio: $bio, location: $location, links: $links, profileImage: $profileImage, instagramUsername: $instagramUsername, totalCollections: $totalCollections, totalLikes: $totalLikes, totalPhotos: $totalPhotos, acceptedTos: $acceptedTos, forHire: $forHire, social: $social)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$User$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) || other.firstName == firstName) &&
            (identical(other.lastName, lastName) || other.lastName == lastName) &&
            (identical(other.twitterUsername, twitterUsername) || other.twitterUsername == twitterUsername) &&
            (identical(other.portfolioUrl, portfolioUrl) || other.portfolioUrl == portfolioUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.profileImage, profileImage) || other.profileImage == profileImage) &&
            (identical(other.instagramUsername, instagramUsername) || other.instagramUsername == instagramUsername) &&
            (identical(other.totalCollections, totalCollections) || other.totalCollections == totalCollections) &&
            (identical(other.totalLikes, totalLikes) || other.totalLikes == totalLikes) &&
            (identical(other.totalPhotos, totalPhotos) || other.totalPhotos == totalPhotos) &&
            (identical(other.acceptedTos, acceptedTos) || other.acceptedTos == acceptedTos) &&
            (identical(other.forHire, forHire) || other.forHire == forHire) &&
            (identical(other.social, social) || other.social == social));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        updatedAt,
        username,
        name,
        firstName,
        lastName,
        twitterUsername,
        portfolioUrl,
        bio,
        location,
        links,
        profileImage,
        instagramUsername,
        totalCollections,
        totalLikes,
        totalPhotos,
        acceptedTos,
        forHire,
        social
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$User$CopyWith<_$User$> get copyWith => __$$User$CopyWithImpl<_$User$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$User$ToJson(
      this,
    );
  }
}

abstract class User$ implements User {
  const factory User$(
      {required final String id,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      required final String username,
      final String? name,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'twitter_username') final String? twitterUsername,
      @JsonKey(name: 'portfolio_url') final String? portfolioUrl,
      final String? bio,
      final String? location,
      final Links? links,
      @JsonKey(name: 'profile_image') required final ProfileImage profileImage,
      @JsonKey(name: 'instagram_username') final String? instagramUsername,
      final int? totalCollections,
      final int? totalLikes,
      final int? totalPhotos,
      final bool? acceptedTos,
      final bool? forHire,
      final Social? social}) = _$User$;

  factory User$.fromJson(Map<String, dynamic> json) = _$User$.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  String get username;
  @override
  String? get name;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername;
  @override
  @JsonKey(name: 'portfolio_url')
  String? get portfolioUrl;
  @override
  String? get bio;
  @override
  String? get location;
  @override
  Links? get links;
  @override
  @JsonKey(name: 'profile_image')
  ProfileImage get profileImage;
  @override
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername;
  @override
  int? get totalCollections;
  @override
  int? get totalLikes;
  @override
  int? get totalPhotos;
  @override
  bool? get acceptedTos;
  @override
  bool? get forHire;
  @override
  Social? get social;
  @override
  @JsonKey(ignore: true)
  _$$User$CopyWith<_$User$> get copyWith => throw _privateConstructorUsedError;
}

ProfileImage _$ProfileImageFromJson(Map<String, dynamic> json) {
  return ProfileImage$.fromJson(json);
}

/// @nodoc
mixin _$ProfileImage {
  String get small => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImageCopyWith<ProfileImage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageCopyWith<$Res> {
  factory $ProfileImageCopyWith(ProfileImage value, $Res Function(ProfileImage) then) =
      _$ProfileImageCopyWithImpl<$Res, ProfileImage>;
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class _$ProfileImageCopyWithImpl<$Res, $Val extends ProfileImage> implements $ProfileImageCopyWith<$Res> {
  _$ProfileImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImage$CopyWith<$Res> implements $ProfileImageCopyWith<$Res> {
  factory _$$ProfileImage$CopyWith(_$ProfileImage$ value, $Res Function(_$ProfileImage$) then) =
      __$$ProfileImage$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class __$$ProfileImage$CopyWithImpl<$Res> extends _$ProfileImageCopyWithImpl<$Res, _$ProfileImage$>
    implements _$$ProfileImage$CopyWith<$Res> {
  __$$ProfileImage$CopyWithImpl(_$ProfileImage$ _value, $Res Function(_$ProfileImage$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$ProfileImage$(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImage$ implements ProfileImage$ {
  const _$ProfileImage$({required this.small, required this.medium, required this.large});

  factory _$ProfileImage$.fromJson(Map<String, dynamic> json) => _$$ProfileImage$FromJson(json);

  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  @override
  String toString() {
    return 'ProfileImage(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImage$ &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImage$CopyWith<_$ProfileImage$> get copyWith =>
      __$$ProfileImage$CopyWithImpl<_$ProfileImage$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImage$ToJson(
      this,
    );
  }
}

abstract class ProfileImage$ implements ProfileImage {
  const factory ProfileImage$(
      {required final String small, required final String medium, required final String large}) = _$ProfileImage$;

  factory ProfileImage$.fromJson(Map<String, dynamic> json) = _$ProfileImage$.fromJson;

  @override
  String get small;
  @override
  String get medium;
  @override
  String get large;
  @override
  @JsonKey(ignore: true)
  _$$ProfileImage$CopyWith<_$ProfileImage$> get copyWith => throw _privateConstructorUsedError;
}

Social _$SocialFromJson(Map<String, dynamic> json) {
  return Social$.fromJson(json);
}

/// @nodoc
mixin _$Social {
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'portfolio_url')
  String? get portfolioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'paypal_email')
  String? get paypalEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialCopyWith<Social> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialCopyWith<$Res> {
  factory $SocialCopyWith(Social value, $Res Function(Social) then) = _$SocialCopyWithImpl<$Res, Social>;
  @useResult
  $Res call(
      {@JsonKey(name: 'instagram_username') String? instagramUsername,
      @JsonKey(name: 'portfolio_url') String? portfolioUrl,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'paypal_email') String? paypalEmail});
}

/// @nodoc
class _$SocialCopyWithImpl<$Res, $Val extends Social> implements $SocialCopyWith<$Res> {
  _$SocialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagramUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? twitterUsername = freezed,
    Object? paypalEmail = freezed,
  }) {
    return _then(_value.copyWith(
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      paypalEmail: freezed == paypalEmail
          ? _value.paypalEmail
          : paypalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Social$CopyWith<$Res> implements $SocialCopyWith<$Res> {
  factory _$$Social$CopyWith(_$Social$ value, $Res Function(_$Social$) then) = __$$Social$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'instagram_username') String? instagramUsername,
      @JsonKey(name: 'portfolio_url') String? portfolioUrl,
      @JsonKey(name: 'twitter_username') String? twitterUsername,
      @JsonKey(name: 'paypal_email') String? paypalEmail});
}

/// @nodoc
class __$$Social$CopyWithImpl<$Res> extends _$SocialCopyWithImpl<$Res, _$Social$> implements _$$Social$CopyWith<$Res> {
  __$$Social$CopyWithImpl(_$Social$ _value, $Res Function(_$Social$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instagramUsername = freezed,
    Object? portfolioUrl = freezed,
    Object? twitterUsername = freezed,
    Object? paypalEmail = freezed,
  }) {
    return _then(_$Social$(
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      portfolioUrl: freezed == portfolioUrl
          ? _value.portfolioUrl
          : portfolioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterUsername: freezed == twitterUsername
          ? _value.twitterUsername
          : twitterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      paypalEmail: freezed == paypalEmail
          ? _value.paypalEmail
          : paypalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Social$ implements Social$ {
  const _$Social$(
      {@JsonKey(name: 'instagram_username') this.instagramUsername,
      @JsonKey(name: 'portfolio_url') this.portfolioUrl,
      @JsonKey(name: 'twitter_username') this.twitterUsername,
      @JsonKey(name: 'paypal_email') this.paypalEmail});

  factory _$Social$.fromJson(Map<String, dynamic> json) => _$$Social$FromJson(json);

  @override
  @JsonKey(name: 'instagram_username')
  final String? instagramUsername;
  @override
  @JsonKey(name: 'portfolio_url')
  final String? portfolioUrl;
  @override
  @JsonKey(name: 'twitter_username')
  final String? twitterUsername;
  @override
  @JsonKey(name: 'paypal_email')
  final String? paypalEmail;

  @override
  String toString() {
    return 'Social(instagramUsername: $instagramUsername, portfolioUrl: $portfolioUrl, twitterUsername: $twitterUsername, paypalEmail: $paypalEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Social$ &&
            (identical(other.instagramUsername, instagramUsername) || other.instagramUsername == instagramUsername) &&
            (identical(other.portfolioUrl, portfolioUrl) || other.portfolioUrl == portfolioUrl) &&
            (identical(other.twitterUsername, twitterUsername) || other.twitterUsername == twitterUsername) &&
            (identical(other.paypalEmail, paypalEmail) || other.paypalEmail == paypalEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, instagramUsername, portfolioUrl, twitterUsername, paypalEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Social$CopyWith<_$Social$> get copyWith => __$$Social$CopyWithImpl<_$Social$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Social$ToJson(
      this,
    );
  }
}

abstract class Social$ implements Social {
  const factory Social$(
      {@JsonKey(name: 'instagram_username') final String? instagramUsername,
      @JsonKey(name: 'portfolio_url') final String? portfolioUrl,
      @JsonKey(name: 'twitter_username') final String? twitterUsername,
      @JsonKey(name: 'paypal_email') final String? paypalEmail}) = _$Social$;

  factory Social$.fromJson(Map<String, dynamic> json) = _$Social$.fromJson;

  @override
  @JsonKey(name: 'instagram_username')
  String? get instagramUsername;
  @override
  @JsonKey(name: 'portfolio_url')
  String? get portfolioUrl;
  @override
  @JsonKey(name: 'twitter_username')
  String? get twitterUsername;
  @override
  @JsonKey(name: 'paypal_email')
  String? get paypalEmail;
  @override
  @JsonKey(ignore: true)
  _$$Social$CopyWith<_$Social$> get copyWith => throw _privateConstructorUsedError;
}
