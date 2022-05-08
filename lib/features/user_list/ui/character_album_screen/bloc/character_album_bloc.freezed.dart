// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_album_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharacterAlbumEventTearOff {
  const _$CharacterAlbumEventTearOff();

  _Started started({required int albumId}) {
    return _Started(
      albumId: albumId,
    );
  }
}

/// @nodoc
const $CharacterAlbumEvent = _$CharacterAlbumEventTearOff();

/// @nodoc
mixin _$CharacterAlbumEvent {
  int get albumId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int albumId) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int albumId)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int albumId)? started,
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
  $CharacterAlbumEventCopyWith<CharacterAlbumEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterAlbumEventCopyWith<$Res> {
  factory $CharacterAlbumEventCopyWith(
          CharacterAlbumEvent value, $Res Function(CharacterAlbumEvent) then) =
      _$CharacterAlbumEventCopyWithImpl<$Res>;
  $Res call({int albumId});
}

/// @nodoc
class _$CharacterAlbumEventCopyWithImpl<$Res>
    implements $CharacterAlbumEventCopyWith<$Res> {
  _$CharacterAlbumEventCopyWithImpl(this._value, this._then);

  final CharacterAlbumEvent _value;
  // ignore: unused_field
  final $Res Function(CharacterAlbumEvent) _then;

  @override
  $Res call({
    Object? albumId = freezed,
  }) {
    return _then(_value.copyWith(
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res>
    implements $CharacterAlbumEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({int albumId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CharacterAlbumEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? albumId = freezed,
  }) {
    return _then(_Started(
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.albumId});

  @override
  final int albumId;

  @override
  String toString() {
    return 'CharacterAlbumEvent.started(albumId: $albumId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.albumId, albumId) ||
                const DeepCollectionEquality().equals(other.albumId, albumId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(albumId);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int albumId) started,
  }) {
    return started(albumId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int albumId)? started,
  }) {
    return started?.call(albumId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int albumId)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(albumId);
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

abstract class _Started implements CharacterAlbumEvent {
  const factory _Started({required int albumId}) = _$_Started;

  @override
  int get albumId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CharacterAlbumStateTearOff {
  const _$CharacterAlbumStateTearOff();

  _CharacterAlbumState call(
      {required bool isSubmitting,
      required bool noInternet,
      required bool isOk,
      required bool serverError,
      required List<Photos> photos}) {
    return _CharacterAlbumState(
      isSubmitting: isSubmitting,
      noInternet: noInternet,
      isOk: isOk,
      serverError: serverError,
      photos: photos,
    );
  }
}

/// @nodoc
const $CharacterAlbumState = _$CharacterAlbumStateTearOff();

/// @nodoc
mixin _$CharacterAlbumState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get noInternet => throw _privateConstructorUsedError;
  bool get isOk => throw _privateConstructorUsedError;
  bool get serverError => throw _privateConstructorUsedError;
  List<Photos> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterAlbumStateCopyWith<CharacterAlbumState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterAlbumStateCopyWith<$Res> {
  factory $CharacterAlbumStateCopyWith(
          CharacterAlbumState value, $Res Function(CharacterAlbumState) then) =
      _$CharacterAlbumStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool isOk,
      bool serverError,
      List<Photos> photos});
}

/// @nodoc
class _$CharacterAlbumStateCopyWithImpl<$Res>
    implements $CharacterAlbumStateCopyWith<$Res> {
  _$CharacterAlbumStateCopyWithImpl(this._value, this._then);

  final CharacterAlbumState _value;
  // ignore: unused_field
  final $Res Function(CharacterAlbumState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? isOk = freezed,
    Object? serverError = freezed,
    Object? photos = freezed,
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
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photos>,
    ));
  }
}

/// @nodoc
abstract class _$CharacterAlbumStateCopyWith<$Res>
    implements $CharacterAlbumStateCopyWith<$Res> {
  factory _$CharacterAlbumStateCopyWith(_CharacterAlbumState value,
          $Res Function(_CharacterAlbumState) then) =
      __$CharacterAlbumStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool isOk,
      bool serverError,
      List<Photos> photos});
}

/// @nodoc
class __$CharacterAlbumStateCopyWithImpl<$Res>
    extends _$CharacterAlbumStateCopyWithImpl<$Res>
    implements _$CharacterAlbumStateCopyWith<$Res> {
  __$CharacterAlbumStateCopyWithImpl(
      _CharacterAlbumState _value, $Res Function(_CharacterAlbumState) _then)
      : super(_value, (v) => _then(v as _CharacterAlbumState));

  @override
  _CharacterAlbumState get _value => super._value as _CharacterAlbumState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? isOk = freezed,
    Object? serverError = freezed,
    Object? photos = freezed,
  }) {
    return _then(_CharacterAlbumState(
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
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photos>,
    ));
  }
}

/// @nodoc

class _$_CharacterAlbumState implements _CharacterAlbumState {
  const _$_CharacterAlbumState(
      {required this.isSubmitting,
      required this.noInternet,
      required this.isOk,
      required this.serverError,
      required this.photos});

  @override
  final bool isSubmitting;
  @override
  final bool noInternet;
  @override
  final bool isOk;
  @override
  final bool serverError;
  @override
  final List<Photos> photos;

  @override
  String toString() {
    return 'CharacterAlbumState(isSubmitting: $isSubmitting, noInternet: $noInternet, isOk: $isOk, serverError: $serverError, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharacterAlbumState &&
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
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(noInternet) ^
      const DeepCollectionEquality().hash(isOk) ^
      const DeepCollectionEquality().hash(serverError) ^
      const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  _$CharacterAlbumStateCopyWith<_CharacterAlbumState> get copyWith =>
      __$CharacterAlbumStateCopyWithImpl<_CharacterAlbumState>(
          this, _$identity);
}

abstract class _CharacterAlbumState implements CharacterAlbumState {
  const factory _CharacterAlbumState(
      {required bool isSubmitting,
      required bool noInternet,
      required bool isOk,
      required bool serverError,
      required List<Photos> photos}) = _$_CharacterAlbumState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get noInternet => throw _privateConstructorUsedError;
  @override
  bool get isOk => throw _privateConstructorUsedError;
  @override
  bool get serverError => throw _privateConstructorUsedError;
  @override
  List<Photos> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CharacterAlbumStateCopyWith<_CharacterAlbumState> get copyWith =>
      throw _privateConstructorUsedError;
}
