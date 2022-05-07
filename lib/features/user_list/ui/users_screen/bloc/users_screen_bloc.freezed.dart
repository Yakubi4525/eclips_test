// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsersScreenEventTearOff {
  const _$UsersScreenEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $UsersScreenEvent = _$UsersScreenEventTearOff();

/// @nodoc
mixin _$UsersScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
}

/// @nodoc
abstract class $UsersScreenEventCopyWith<$Res> {
  factory $UsersScreenEventCopyWith(
          UsersScreenEvent value, $Res Function(UsersScreenEvent) then) =
      _$UsersScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersScreenEventCopyWithImpl<$Res>
    implements $UsersScreenEventCopyWith<$Res> {
  _$UsersScreenEventCopyWithImpl(this._value, this._then);

  final UsersScreenEvent _value;
  // ignore: unused_field
  final $Res Function(UsersScreenEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$UsersScreenEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'UsersScreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
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

abstract class _Started implements UsersScreenEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$UsersScreenStateTearOff {
  const _$UsersScreenStateTearOff();

  _UsersScreenStateData call(
      {required bool isSubmitting,
      required bool noInternet,
      required bool serverError,
      required List<User> users}) {
    return _UsersScreenStateData(
      isSubmitting: isSubmitting,
      noInternet: noInternet,
      serverError: serverError,
      users: users,
    );
  }
}

/// @nodoc
const $UsersScreenState = _$UsersScreenStateTearOff();

/// @nodoc
mixin _$UsersScreenState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get noInternet => throw _privateConstructorUsedError;
  bool get serverError => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersScreenStateCopyWith<UsersScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersScreenStateCopyWith<$Res> {
  factory $UsersScreenStateCopyWith(
          UsersScreenState value, $Res Function(UsersScreenState) then) =
      _$UsersScreenStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting, bool noInternet, bool serverError, List<User> users});
}

/// @nodoc
class _$UsersScreenStateCopyWithImpl<$Res>
    implements $UsersScreenStateCopyWith<$Res> {
  _$UsersScreenStateCopyWithImpl(this._value, this._then);

  final UsersScreenState _value;
  // ignore: unused_field
  final $Res Function(UsersScreenState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? serverError = freezed,
    Object? users = freezed,
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
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
abstract class _$UsersScreenStateDataCopyWith<$Res>
    implements $UsersScreenStateCopyWith<$Res> {
  factory _$UsersScreenStateDataCopyWith(_UsersScreenStateData value,
          $Res Function(_UsersScreenStateData) then) =
      __$UsersScreenStateDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting, bool noInternet, bool serverError, List<User> users});
}

/// @nodoc
class __$UsersScreenStateDataCopyWithImpl<$Res>
    extends _$UsersScreenStateCopyWithImpl<$Res>
    implements _$UsersScreenStateDataCopyWith<$Res> {
  __$UsersScreenStateDataCopyWithImpl(
      _UsersScreenStateData _value, $Res Function(_UsersScreenStateData) _then)
      : super(_value, (v) => _then(v as _UsersScreenStateData));

  @override
  _UsersScreenStateData get _value => super._value as _UsersScreenStateData;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? noInternet = freezed,
    Object? serverError = freezed,
    Object? users = freezed,
  }) {
    return _then(_UsersScreenStateData(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      noInternet: noInternet == freezed
          ? _value.noInternet
          : noInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      serverError: serverError == freezed
          ? _value.serverError
          : serverError // ignore: cast_nullable_to_non_nullable
              as bool,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_UsersScreenStateData implements _UsersScreenStateData {
  const _$_UsersScreenStateData(
      {required this.isSubmitting,
      required this.noInternet,
      required this.serverError,
      required this.users});

  @override
  final bool isSubmitting;
  @override
  final bool noInternet;
  @override
  final bool serverError;
  @override
  final List<User> users;

  @override
  String toString() {
    return 'UsersScreenState(isSubmitting: $isSubmitting, noInternet: $noInternet, serverError: $serverError, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersScreenStateData &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.noInternet, noInternet) ||
                const DeepCollectionEquality()
                    .equals(other.noInternet, noInternet)) &&
            (identical(other.serverError, serverError) ||
                const DeepCollectionEquality()
                    .equals(other.serverError, serverError)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(noInternet) ^
      const DeepCollectionEquality().hash(serverError) ^
      const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$UsersScreenStateDataCopyWith<_UsersScreenStateData> get copyWith =>
      __$UsersScreenStateDataCopyWithImpl<_UsersScreenStateData>(
          this, _$identity);
}

abstract class _UsersScreenStateData implements UsersScreenState {
  const factory _UsersScreenStateData(
      {required bool isSubmitting,
      required bool noInternet,
      required bool serverError,
      required List<User> users}) = _$_UsersScreenStateData;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get noInternet => throw _privateConstructorUsedError;
  @override
  bool get serverError => throw _privateConstructorUsedError;
  @override
  List<User> get users => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UsersScreenStateDataCopyWith<_UsersScreenStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
