part of 'character_album_bloc.dart';



@freezed
class CharacterAlbumState with _$CharacterAlbumState {
  const factory CharacterAlbumState({
    required final bool isSubmitting,
    required final bool noInternet,
    required final bool isOk,
    required final bool serverError,
    required final List<Photos> photos,
  }) = _CharacterAlbumState;
  factory CharacterAlbumState.initial() => const CharacterAlbumState(
        isSubmitting: false,
        photos: [],
        serverError: false,
        noInternet: false,
        isOk: true,
      );
}
