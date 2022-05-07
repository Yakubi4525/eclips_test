part of 'users_screen_bloc.dart';

@freezed
class UsersScreenEvent with _$UsersScreenEvent {
  const factory UsersScreenEvent.started() = _Started;
}