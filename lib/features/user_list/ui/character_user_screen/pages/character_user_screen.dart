import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app/core/components/line/line_widget.dart';
import 'package:user_app/core/components/loading/loading_widget.dart';
import 'package:user_app/features/user_list/ui/user_albums_screen/widgets/album_view.dart';
import 'package:user_app/features/user_list/ui/user_posts_screen/widgets/post_view.dart';
import 'package:user_app/core/components/buttons/simple_button.dart';
import 'package:user_app/core/components/snack/snack.dart';
import 'package:user_app/core/components/snack/snack_widget.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';
import 'package:user_app/features/user_list/ui/character_user_screen/bloc/character_user_bloc.dart';
import 'package:user_app/features/user_list/ui/character_user_screen/widgets/address_info.dart';
import 'package:user_app/features/user_list/ui/character_user_screen/widgets/company_info.dart';
import 'package:user_app/features/user_list/ui/character_user_screen/widgets/info_widget.dart';
import 'package:user_app/injection.dart';

class CharacterUserScreen extends StatelessWidget {
  final User user;
  const CharacterUserScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return BlocProvider(
      create: (context) => getIt<CharacterUserBloc>()
        ..add(CharacterUserEvent.started(userId: user.id!)),
      child: BlocConsumer<CharacterUserBloc, CharacterUserState>(
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
          } else if (state.isOk) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                elevation: 0,
                backgroundColor: ColorPalette.white,
                title: Text(
                  user.username!,
                  style:
                      TextThemes.headline2.copyWith(color: ColorPalette.black),
                ),
              ),
              body: SafeArea(
                child: ListView(
                  shrinkWrap: true,
                  controller: scrollController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InfoWidget(keyText: 'Name:', valueText: user.name!),
                          InfoWidget(keyText: 'Email:', valueText: user.email!),
                          InfoWidget(keyText: 'Phone:', valueText: user.phone!),
                          InfoWidget(
                              keyText: 'Website:', valueText: user.website!),
                          const LineWidget(),
                          CompanyInfo(
                            company: user.company!,
                          ),
                          const LineWidget(),
                          AddressInfo(
                            address: user.address!,
                          ),
                          const LineWidget(),
                          Text(
                            "Posts:",
                            style: TextThemes.headline2.copyWith(
                              color: ColorPalette.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 300,
                            child: PostViewWidget(
                              scrollController: scrollController,
                              postList: state.posts,
                              count: state.posts.length>2? 3 : 0,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SimpleButton(
                            name: 'Show More Posts',
                            function: () {
                              Navigator.of(context).pushNamed('/user_posts',
                                  arguments: state.posts);
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Albums:",
                            style: TextThemes.headline2.copyWith(
                              color: ColorPalette.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 250,
                            child: AlbumViewWidget(
                              albumList: state.albums,
                              scrollController: scrollController,
                              count: state.albums.length>2 ? 3 : state.albums.length,
                            ),
                          ),
                          SimpleButton(
                            name: 'Show More Albums',
                            function: () {
                              Navigator.of(context).pushNamed(
                                '/user_albums',
                                arguments: state.albums,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return const Scaffold();
        },
      ),
    );
  }
}
