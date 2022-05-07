part of 'character_user_bloc.dart';

@freezed
class CharacterUserEvent with _$CharacterUserEvent {
  const factory CharacterUserEvent.started({required int userId}) = _Started;
}