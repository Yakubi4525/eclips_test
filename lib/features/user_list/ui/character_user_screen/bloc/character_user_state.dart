part of 'character_user_bloc.dart';

@freezed
class CharacterUserState with _$CharacterUserState {
  const factory CharacterUserState({
    required final bool isSubmitting,
    required final bool noInternet,
    required final bool isOk,
    required final bool serverError,
    required final List<Post> posts,
    required final List<Album> albums,
  }) = _CharacterUserState;
  factory CharacterUserState.initial() => const CharacterUserState(
        isSubmitting: false,
        posts: [],
        albums: [],
        serverError: false,
        noInternet: false,
        isOk: true,
      );
}
