import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app/core/components/loading/loading_widget.dart';
import 'package:user_app/core/components/snack/snack.dart';
import 'package:user_app/core/components/snack/snack_widget.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';
import 'package:user_app/core/utils/vatiables.dart';
import 'package:user_app/features/user_list/ui/users_screen/bloc/users_screen_bloc.dart';
import 'package:user_app/features/user_list/ui/users_screen/widgets/list_view_builder.dart';
import 'package:user_app/injection.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UsersScreenBloc>()..add(const UsersScreenEvent.started()),
      child: BlocConsumer<UsersScreenBloc, UsersScreenState>(
        listener: (context, state) {
          if (state.noInternet) {
            ScaffoldMessenger.of(context).showSnackBar(
              noInternetSnackbar,
            );
          }
          if (state.serverError) {
            ScaffoldMessenger.of(context).showSnackBar(
              snackWidget(
                content: 'Server failure',
                label: 'HIDE',
                onPressed: () {},
              ),
            );
          }
        },
        builder: (context, state) {
          if (state.isSubmitting) {
            return const CustomLoaderWidget();
          } else if (state.users.isNotEmpty) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: ColorPalette.white,
                elevation: 0,
                title: Text(
                  Variables.allUsers,
                  style: TextThemes.headline2.copyWith(
                    color: ColorPalette.black,
                  ),
                ),
              ),
              body: ListViewBuilder(
                userList: state.users,
              ),
            );
          }
          return const Scaffold();
        },
      ),
    );
  }
}
