// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:user_app/features/user_list/domain/entetties/photo.dart';
// import 'package:user_app/features/user_list/domain/reositories/data_repository.dart';


// part 'character_album_event.dart';
// part 'character_album_state.dart';
// part 'character_album_bloc.freezed.dart';

// class CharacterAlbumBloc
//     extends Bloc<CharacterAlbumEvent, CharacterAlbumState> {
//   CharacterAlbumBloc() : super(const _InitialState());
//   final DataRepository _dataRepository = DataRepository();

//   Stream<CharacterAlbumState> mapEventToState(
//     CharacterAlbumEvent event,
//   ) async* {
//     yield* event.map(started: _mapInitialEvent);
//   }

//   Stream<CharacterAlbumState> _mapInitialEvent(_Started event) async* {
//     yield const CharacterAlbumState.loading();
//     try {
//       var commentList =
//           await _dataRepository.getAlbumPhotos(albumId: event.albumId);
//       if (commentList.isNotEmpty) {
//         yield CharacterAlbumState.data(photoList: commentList);
//       }
//     } catch (errorMessage) {
//       yield CharacterAlbumState.error(errorMessage: errorMessage.toString());
//     }
//   }
// }
