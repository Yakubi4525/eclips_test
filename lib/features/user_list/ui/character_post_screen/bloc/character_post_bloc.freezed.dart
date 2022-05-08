// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharacterPostEventTearOff {
  const _$CharacterPostEventTearOff();

  _Started started({required int postId}) {
    return _Started(
      postId: postId,
    );
  }

  _Comment addComment({required Comment comment}) {
    return _Comment(
      comment: comment,
    );
  }
}

/// @nodoc
const $CharacterPostEvent = _$CharacterPostEventTearOff();

/// @nodoc
mixin _$CharacterPostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postId) started,
    required TResult Function(Comment comment) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int postId)? started,
    TResult Function(Comment comment)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postId)? started,
    TResult Function(Comment comment)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Comment value) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Comment value)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Comment value)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterPostEventCopyWith<$Res> {
  factory $CharacterPostEventCopyWith(
          CharacterPostEvent value, $Res Function(CharacterPostEvent) then) =
      _$CharacterPostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterPostEventCopyWithImpl<$Res>
    implements $CharacterPostEventCopyWith<$Res> {
  _$CharacterPostEventCopyWithImpl(this._value, this._then);

  final CharacterPostEvent _value;
  // ignore: unused_field
  final $Res Function(CharacterPostEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({int postId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CharacterPostEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? postId = freezed,
  }) {
    return _then(_Started(
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.postId});

  @override
  final int postId;

  @override
  String toString() {
    return 'CharacterPostEvent.started(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postId);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postId) started,
    required TResult Function(Comment comment) addComment,
  }) {
    return started(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int postId)? started,
    TResult Function(Comment comment)? addComment,
  }) {
    return started?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postId)? started,
    TResult Function(Comment comment)? addComment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Comment value) addComment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Comment value)? addComment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Comment value)? addComment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CharacterPostEvent {
  const factory _Started({required int postId}) = _$_Started;

  int get postId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) =
      __$CommentCopyWithImpl<$Res>;
  $Res call({Comment comment});
}

/// @nodoc
class __$CommentCopyWithImpl<$Res>
    extends _$CharacterPostEventCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(_Comment _value, $Res Function(_Comment) _then)
      : super(_value, (v) => _then(v as _Comment));

  @override
  _Comment get _value => super._value as _Comment;

  @override
  $Res call({
    Object? comment = freezed,
  }) {
    return _then(_Comment(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }
}

/// @nodoc

class _$_Comment implements _Comment {
  const _$_Comment({required this.comment});

  @override
  final Comment comment;

  @override
  String toString() {
    return 'CharacterPostEvent.addComment(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Comment &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(comment);

  @JsonKey(ignore: true)
  @override
  _$CommentCopyWith<_Comment> get copyWith =>
      __$CommentCopyWithImpl<_Comment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postId) started,
    required TResult Function(Comment comment) addComment,
  }) {
    return addComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int postId)? started,
    TResult Function(Comment comment)? addComment,
  }) {
    return addComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postId)? started,
    TResult Function(Comment comment)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Comment value) addComment,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Comment value)? addComment,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Comment value)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class _Comment implements CharacterPostEvent {
  const factory _Comment({required Comment comment}) = _$_Comment;

  Comment get comment => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CommentCopyWith<_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CharacterPostStateTearOff {
  const _$CharacterPostStateTearOff();

  _CharacterPostState call(
      {required bool isSubmitting,
      required bool noInternet,
      required bool isOk,
      required bool serverError,
      required List<Comment> comments}) {
    return _CharacterPostState(
      isSubmitting: isSubmitting,
      noInternet: noInternet,
      isOk: isOk,
      serverError: serverError,
      comments: comments,
    );
  }
}

/// @nodoc
const $CharacterPostState = _$CharacterPostStateTearOff();

/// @nodoc
mixin _$CharacterPostState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get noInternet => throw _privateConstructorUsedError;
  bool get isOk => throw _privateConstructorUsedError;
  bool get serverError => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterPostStateCopyWith<CharacterPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterPostStateCopyWith<$Res> {
  factory $CharacterPostStateCopyWith(
          CharacterPostState value, $Res Function(CharacterPostState) then) =
      _$CharacterPostStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool isOk,
      bool serverError,
      List<Comment> comments});
}

/// @nodoc
class _$CharacterPostStateCopyWithImpl<$Res>
    implements $CharacterPostStateCopyWith<$Res> {
  _$CharacterPostStateCopyWithImpl(this._value, this._then);

  final CharacterPostState _value;
  // ignore: unused_field
  final $Res Function(CharacterPostState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? isOk = freezed,
    Object? serverError = freezed,
    Object? comments = freezed,
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
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc
abstract class _$CharacterPostStateCopyWith<$Res>
    implements $CharacterPostStateCopyWith<$Res> {
  factory _$CharacterPostStateCopyWith(
          _CharacterPostState value, $Res Function(_CharacterPostState) then) =
      __$CharacterPostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      bool noInternet,
      bool isOk,
      bool serverError,
      List<Comment> comments});
}

/// @nodoc
class __$CharacterPostStateCopyWithImpl<$Res>
    extends _$CharacterPostStateCopyWithImpl<$Res>
    implements _$CharacterPostStateCopyWith<$Res> {
  __$CharacterPostStateCopyWithImpl(
      _CharacterPostState _value, $Res Function(_CharacterPostState) _then)
      : super(_value, (v) => _then(v as _CharacterPostState));

  @override
  _CharacterPostState get _value => super._value as _CharacterPostState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? isOk = freezed,
    Object? serverError = freezed,
    Object? comments = freezed,
  }) {
    return _then(_CharacterPostState(
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
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc

class _$_CharacterPostState implements _CharacterPostState {
  const _$_CharacterPostState(
      {required this.isSubmitting,
      required this.noInternet,
      required this.isOk,
      required this.serverError,
      required this.comments});

  @override
  final bool isSubmitting;
  @override
  final bool noInternet;
  @override
  final bool isOk;
  @override
  final bool serverError;
  @override
  final List<Comment> comments;

  @override
  String toString() {
    return 'CharacterPostState(isSubmitting: $isSubmitting, noInternet: $noInternet, isOk: $isOk, serverError: $serverError, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharacterPostState &&
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
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(noInternet) ^
      const DeepCollectionEquality().hash(isOk) ^
      const DeepCollectionEquality().hash(serverError) ^
      const DeepCollectionEquality().hash(comments);

  @JsonKey(ignore: true)
  @override
  _$CharacterPostStateCopyWith<_CharacterPostState> get copyWith =>
      __$CharacterPostStateCopyWithImpl<_CharacterPostState>(this, _$identity);
}

abstract class _CharacterPostState implements CharacterPostState {
  const factory _CharacterPostState(
      {required bool isSubmitting,
      required bool noInternet,
      required bool isOk,
      required bool serverError,
      required List<Comment> comments}) = _$_CharacterPostState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get noInternet => throw _privateConstructorUsedError;
  @override
  bool get isOk => throw _privateConstructorUsedError;
  @override
  bool get serverError => throw _privateConstructorUsedError;
  @override
  List<Comment> get comments => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CharacterPostStateCopyWith<_CharacterPostState> get copyWith =>
      throw _privateConstructorUsedError;
}
