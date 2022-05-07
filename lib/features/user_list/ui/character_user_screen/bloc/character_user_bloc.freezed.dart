// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharacterUserEventTearOff {
  const _$CharacterUserEventTearOff();

  _Started started({required int userId}) {
    return _Started(
      userId: userId,
    );
  }
}

/// @nodoc
const $CharacterUserEvent = _$CharacterUserEventTearOff();

/// @nodoc
mixin _$CharacterUserEvent {
  int get userId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterUserEventCopyWith<CharacterUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterUserEventCopyWith<$Res> {
  factory $CharacterUserEventCopyWith(
          CharacterUserEvent value, $Res Function(CharacterUserEvent) then) =
      _$CharacterUserEventCopyWithImpl<$Res>;
  $Res call({int userId});
}

/// @nodoc
class _$CharacterUserEventCopyWithImpl<$Res>
    implements $CharacterUserEventCopyWith<$Res> {
  _$CharacterUserEventCopyWithImpl(this._value, this._then);

  final CharacterUserEvent _value;
  // ignore: unused_field
  final $Res Function(CharacterUserEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res>
    implements $CharacterUserEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({int userId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CharacterUserEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_Started(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'CharacterUserEvent.started(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) started,
  }) {
    return started(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId)? started,
  }) {
    return started?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CharacterUserEvent {
  const factory _Started({required int userId}) = _$_Started;

  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CharacterUserStateTearOff {
  const _$CharacterUserStateTearOff();

  _CharacterUserState call(
      {required bool isSubmitting,
      required bool noInternet,
      required bool isOk,
      required bool serverError,
      required List<Post> posts,
      required List<Album> albums}) {
    return _CharacterUserState(
      isSubmitting: isSubmitting,
      noInternet: noInternet,
      isOk: isOk,
      serverError: serverError,
      posts: posts,
      albums: albums,
    );
  }
}

/// @nodoc
const $CharacterUserState = _$CharacterUserStateTearOff();

/// @nodoc
mixin _$CharacterUserState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get noInternet => throw _privateConstructorUsedError;
  bool get isOk => throw _privateConstructorUsedError;
  bool get serverError => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;
  List<Album> get albums => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterUserStateCopyWith<CharacterUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterUserStateCopyWith<$Res> {
  factory $CharacterUserStateCopyWith(
          CharacterUserState value, $Res Function(CharacterUserState) then) =
      _$CharacterUserStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool isOk,
      bool serverError,
      List<Post> posts,
      List<Album> albums});
}

/// @nodoc
class _$CharacterUserStateCopyWithImpl<$Res>
    implements $CharacterUserStateCopyWith<$Res> {
  _$CharacterUserStateCopyWithImpl(this._value, this._then);

  final CharacterUserState _value;
  // ignore: unused_field
  final $Res Function(CharacterUserState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? isOk = freezed,
    Object? serverError = freezed,
    Object? posts = freezed,
    Object? albums = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      isOk: isOk == freezed
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
    ));
  }
}

/// @nodoc
abstract class _$CharacterUserStateCopyWith<$Res>
    implements $CharacterUserStateCopyWith<$Res> {
  factory _$CharacterUserStateCopyWith(
          _CharacterUserState value, $Res Function(_CharacterUserState) then) =
      __$CharacterUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool isOk,
      bool serverError,
      List<Post> posts,
      List<Album> albums});
}

/// @nodoc
class __$CharacterUserStateCopyWithImpl<$Res>
    extends _$CharacterUserStateCopyWithImpl<$Res>
    implements _$CharacterUserStateCopyWith<$Res> {
  __$CharacterUserStateCopyWithImpl(
      _CharacterUserState _value, $Res Function(_CharacterUserState) _then)
      : super(_value, (v) => _then(v as _CharacterUserState));

  @override
  _CharacterUserState get _value => super._value as _CharacterUserState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? isOk = freezed,
    Object? serverError = freezed,
    Object? posts = freezed,
    Object? albums = freezed,
  }) {
    return _then(_CharacterUserState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      isOk: isOk == freezed
          ? _value.isOk
          : isOk // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
    ));
  }
}

/// @nodoc

class _$_CharacterUserState implements _CharacterUserState {
  const _$_CharacterUserState(
      {required this.isSubmitting,
      required this.noInternet,
      required this.isOk,
      required this.serverError,
      required this.posts,
      required this.albums});

  @override
  final bool isSubmitting;
  @override
  final bool noInternet;
  @override
  final bool isOk;
  @override
  final bool serverError;
  @override
  final List<Post> posts;
  @override
  final List<Album> albums;

  @override
  String toString() {
    return 'CharacterUserState(isSubmitting: $isSubmitting, noInternet: $noInternet, isOk: $isOk, serverError: $serverError, posts: $posts, albums: $albums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharacterUserState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.noInternet, noInternet) ||
                const DeepCollectionEquality()
                    .equals(other.noInternet, noInternet)) &&
            (identical(other.isOk, isOk) ||
                const DeepCollectionEquality().equals(other.isOk, isOk)) &&
            (identical(other.serverError, serverError) ||
                const DeepCollectionEquality()
                    .equals(other.serverError, serverError)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.albums, albums) ||
                const DeepCollectionEquality().equals(other.albums, albums)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(noInternet) ^
      const DeepCollectionEquality().hash(isOk) ^
      const DeepCollectionEquality().hash(serverError) ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(albums);

  @JsonKey(ignore: true)
  @override
  _$CharacterUserStateCopyWith<_CharacterUserState> get copyWith =>
      __$CharacterUserStateCopyWithImpl<_CharacterUserState>(this, _$identity);
}

abstract class _CharacterUserState implements CharacterUserState {
  const factory _CharacterUserState(
      {required bool isSubmitting,
      required bool noInternet,
      required bool isOk,
      required bool serverError,
      required List<Post> posts,
      required List<Album> albums}) = _$_CharacterUserState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get noInternet => throw _privateConstructorUsedError;
  @override
  bool get isOk => throw _privateConstructorUsedError;
  @override
  bool get serverError => throw _privateConstructorUsedError;
  @override
  List<Post> get posts => throw _privateConstructorUsedError;
  @override
  List<Album> get albums => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CharacterUserStateCopyWith<_CharacterUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
