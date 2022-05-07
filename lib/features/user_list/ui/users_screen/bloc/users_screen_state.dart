part of 'users_screen_bloc.dart';

@freezed
class UsersScreenState with _$UsersScreenState {
  const factory UsersScreenState({
     required final bool isSubmitting,
    required final bool noInternet,
    required final bool serverError,
    required final List<User> users,
  }) = _UsersScreenStateData;
    factory UsersScreenState.initial() => const UsersScreenState(
        isSubmitting: false,
        users: [],
        serverError: false,
        noInternet: false,
      );
}
