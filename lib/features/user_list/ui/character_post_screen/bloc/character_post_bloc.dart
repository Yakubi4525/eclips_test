// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:user_app/features/user_list/domain/reositories/data_repository.dart';

// part 'character_post_event.dart';
// part 'character_post_state.dart';
// part 'character_post_bloc.freezed.dart';

// class CharacterPostBloc extends Bloc<CharacterPostEvent, CharacterPostState> {
//   CharacterPostBloc() : super(_InitialState());
//   DataRepository _dataRepository = DataRepository();

//   @override
//   Stream<CharacterPostState> mapEventToState(
//     CharacterPostEvent event,
//   ) async* {
//     yield* event.map(started: _mapInitialEvent, addComment: _mapCommentEvent);
//   }

//   Stream<CharacterPostState> _mapInitialEvent(_Started event) async* {
//     yield const CharacterPostState.loading();
//     try {
//       var commentList =
//           await _dataRepository.getPostComments(postId: event.postId);
//       if (commentList != null && commentList.isNotEmpty) {
//         yield CharacterPostState.data(commentList: commentList);
//       }
//     } catch (errorMessage) {
//       print('error is $errorMessage');
//       yield CharacterPostState.error(errorMessage: errorMessage.toString());
//     }
//   }

//   Stream<CharacterPostState> _mapCommentEvent(_Comment event) async* {
//     yield const CharacterPostState.loading();
//     try {
//       var comment = await _dataRepository.setOneComment(comment: event.comment);
//       var commentList =
//           await _dataRepository.getPostComments(postId: event.comment.postId);
//       if (commentList != null && commentList.isNotEmpty && comment == true) {
//         yield CharacterPostState.data(commentList: commentList);
//       }
//     } catch (errorMessage) {
//       print('error is $errorMessage');
//       yield CharacterPostState.error(errorMessage: errorMessage.toString());
//     }
//   }
// }
