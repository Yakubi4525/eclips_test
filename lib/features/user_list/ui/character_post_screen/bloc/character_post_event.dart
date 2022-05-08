part of 'character_post_bloc.dart';



@freezed
class CharacterPostEvent with _$CharacterPostEvent {
  const factory CharacterPostEvent.started({required int postId}) = _Started;
  const factory CharacterPostEvent.addComment({required Comment comment}) = _Comment;

}