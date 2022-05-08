import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user_app/core/error/failures.dart';
import 'package:user_app/core/logger/logger_impl.dart';
import 'package:user_app/features/user_list/domain/entetties/album.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';
import 'package:user_app/features/user_list/domain/reositories/data_repository.dart';

part 'character_user_event.dart';
part 'character_user_state.dart';
part 'character_user_bloc.freezed.dart';

@injectable
class CharacterUserBloc extends Bloc<CharacterUserEvent, CharacterUserState> {
  DataRepository dataRepository;
  CharacterUserBloc(this.dataRepository) : super(CharacterUserState.initial()) {
    on<CharacterUserEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            noInternet: false,
            isSubmitting: true,
          ),
        );
        await event.map(
          started: (e) async {
            state.copyWith(isSubmitting: true);
            var postList =
                await dataRepository.getUserPosts(userId: event.userId);
            postList.fold(
              (left) {
                if (left is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      noInternet: true,
                      isSubmitting: false,
                      isOk: false
                    ),
                  );
                }
                if (left is ServerFailure) {
                  logger.e(left.toString());
                  emit(
                    state.copyWith(serverError: true, isOk: false),
                  );
                }
              },
              (right) async {
                logger.d(right);
                emit(
                  state.copyWith(
                    posts: right,
                  ),
                );
              },
            );
            var albumList =
                await dataRepository.getUserAlbums(userId: event.userId);
            albumList.fold(
              (left) {
                if (left is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      noInternet: true,
                      isSubmitting: false,
                    ),
                  );
                }
                if (left is ServerFailure) {
                  logger.e(left.toString());
                  emit(
                    state.copyWith(serverError: true, isOk: false),
                  );
                }
              },
              (right) async {
                logger.d(right);
                emit(
                  state.copyWith(albums: right, isSubmitting: false, isOk: true),
                );
              },
            );
          },
        );
      },
    );
  }
}
