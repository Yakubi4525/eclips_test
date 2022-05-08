part of 'character_post_bloc.dart';



@freezed
class CharacterPostState with _$CharacterPostState {
  const factory CharacterPostState({
    required final bool isSubmitting,
    required final bool noInternet,
    required final bool isOk,
    required final bool serverError,
    required final List<Comment> comments,
  }) = _CharacterPostState;
  factory CharacterPostState.initial() => const CharacterPostState(
        isSubmitting: false,
        comments: [],
        serverError: false,
        noInternet: false,
        isOk: true,
      );
}
