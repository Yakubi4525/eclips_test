import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user_app/core/error/failures.dart';
import 'package:user_app/core/logger/logger_impl.dart';
import 'package:user_app/features/user_list/domain/entetties/photo.dart';
import 'package:user_app/features/user_list/domain/reositories/data_repository.dart';

part 'character_album_event.dart';
part 'character_album_state.dart';
part 'character_album_bloc.freezed.dart';

@injectable
class CharacterAlbumBloc
    extends Bloc<CharacterAlbumEvent, CharacterAlbumState> {
  DataRepository dataRepository;
  CharacterAlbumBloc(this.dataRepository)
      : super(CharacterAlbumState.initial()) {
    on<CharacterAlbumEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            noInternet: false,
            isSubmitting: true,
          ),
        );
        await event.map(
          started: (event) async {
            state.copyWith(isSubmitting: true);
            var commentList =
                await dataRepository.getAlbumPhotos(albumId: event.albumId);
            commentList.fold(
              (left) {
                if (left is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      noInternet: true,
                      isSubmitting: false,
                      isOk: false,
                    ),
                  );
                }
                if (left is ServerFailure) {
                  logger.e(left.toString());
                  emit(
                    state.copyWith(
                      serverError: true,
                      isOk: false,
                    ),
                  );
                }
              },
              (right) async {
                logger.d(right);
                emit(
                  state.copyWith(
                    photos: right,
                    isSubmitting: false,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
