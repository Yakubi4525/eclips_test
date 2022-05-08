part of 'character_album_bloc.dart';



@freezed
class CharacterAlbumEvent with _$CharacterAlbumEvent {
  const factory CharacterAlbumEvent.started({required int albumId}) = _Started;

}