import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:user_app/core/error/failures.dart';
import 'package:user_app/core/logger/logger_impl.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';
import 'package:user_app/features/user_list/domain/reositories/data_repository.dart';

part 'users_screen_event.dart';
part 'users_screen_state.dart';
part 'users_screen_bloc.freezed.dart';

@injectable
class UsersScreenBloc extends Bloc<UsersScreenEvent, UsersScreenState> {
  DataRepository dateRepository;
  UsersScreenBloc(this.dateRepository) : super(UsersScreenState.initial()) {
    on<UsersScreenEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            noInternet: false,
            isSubmitting: true,
          ),
        );
        await Future.delayed(const Duration(seconds: 1));
        await event.map(
          started: (e) async {
            state.copyWith(isSubmitting: true);
            final result = await dateRepository.getAllUser();
            result.fold(
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
                    state.copyWith(serverError: true),
                  );
                }
              },
              (right) async {
                logger.d(right);
                emit(
                  state.copyWith(users: right, isSubmitting: false),
                );
              },
            );
          },
        );
      },
    );
  }
}
