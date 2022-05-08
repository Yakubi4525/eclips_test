import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user_app/core/error/failures.dart';
import 'package:user_app/core/logger/logger_impl.dart';
import 'package:user_app/features/user_list/domain/entetties/comment.dart';
import 'package:user_app/features/user_list/domain/reositories/data_repository.dart';

part 'character_post_event.dart';
part 'character_post_state.dart';
part 'character_post_bloc.freezed.dart';

@injectable
class CharacterPostBloc extends Bloc<CharacterPostEvent, CharacterPostState> {
  DataRepository dataRepository;
  CharacterPostBloc(this.dataRepository) : super(CharacterPostState.initial()) {
    on<CharacterPostEvent>(
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
                await dataRepository.getPostComments(postId: event.postId);
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
                    comments: right,
                    isSubmitting: false
                  ),
                );
              },
            );
          },
          addComment: (value) async {
            state.copyWith(
              noInternet: false,
              isSubmitting: true,
            );
            await Future.delayed(const Duration(seconds: 1));
            await dataRepository.setOneComment(comment: value.comment);
            var commentList = await dataRepository.getPostComments(
                postId: value.comment.postId!);
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
                    comments: right,
                    isSubmitting: false
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
