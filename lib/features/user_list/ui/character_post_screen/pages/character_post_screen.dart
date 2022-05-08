import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_app/core/components/buttons/simple_button.dart';
import 'package:user_app/core/components/inputs/input_widget.dart';
import 'package:user_app/core/components/loading/loading_widget.dart';
import 'package:user_app/core/components/snack/snack.dart';
import 'package:user_app/core/components/snack/snack_widget.dart';
import 'package:user_app/core/components/texts/text_label.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';
import 'package:user_app/features/user_list/domain/entetties/comment.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';
import 'package:user_app/features/user_list/ui/character_post_screen/bloc/character_post_bloc.dart';
import 'package:user_app/features/user_list/ui/character_post_screen/widgets/comment_view.dart';
import 'package:user_app/injection.dart';

// ignore: must_be_immutable
class CharacterPostScreen extends StatelessWidget {
  final Post post;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  static final keys1 = GlobalKey<FormState>(debugLabel: '_nameDebug');
  static final keys2 = GlobalKey<FormState>(debugLabel: '_emailDebug');
  static final keys3 = GlobalKey<FormState>(debugLabel: '_messageDebug');
  Comment? comment;

  CharacterPostScreen({
    Key? key,
    required this.post,
    // required this.comment,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return BlocProvider(
      create: (context) => getIt<CharacterPostBloc>()
        ..add(CharacterPostEvent.started(postId: post.id!)),
      child: BlocConsumer<CharacterPostBloc, CharacterPostState>(
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
        builder: (blocPostContext, state) {
          if (state.isSubmitting) {
            return const CustomLoaderWidget();
          } else if (state.isOk) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0,
                centerTitle: true,
                backgroundColor: ColorPalette.white,
                title: Text(
                  'Post Info',
                  style:
                      TextThemes.headline2.copyWith(color: ColorPalette.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.title!,
                        style: TextThemes.headline2.copyWith(fontSize: 22),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        post.body!,
                        style: TextThemes.headline3,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Comments:",
                        style: TextThemes.headline2.copyWith(fontSize: 22),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CommentViewWidget(
                        commentList: state.comments,
                        scrollController: scrollController,
                      ),
                      SimpleButton(
                        name: 'Add Comment',
                        function: () {
                          showCommentDialog(
                            blocPostContext: blocPostContext,
                            commentsCount: state.comments.length,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          return const Scaffold();
        },
      ),
    );
  }

  Future showCommentDialog(
      {required BuildContext blocPostContext,
      required int commentsCount}) async {
    return await showDialog(
      context: blocPostContext,
      builder: (dialogContext) {
        Size _size = MediaQuery.of(dialogContext).size;
        return Center(
          child: SingleChildScrollView(
            child: AlertDialog(
              title: const Center(child: Text('Add Comment')),
              titleTextStyle:
                  TextThemes.headline2.copyWith(color: ColorPalette.black),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              content: SingleChildScrollView(
                child: SizedBox(
                  height: 400,
                  width: _size.width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomTextWidget(
                            textValue: "Input your name",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          InputWidget(
                            keyValue: keys1,
                            controller: _nameController,
                            hintText: 'name',
                            validationFunction: (str) {
                              if (str.length == 0) {
                                return "Name must be > 0";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const CustomTextWidget(
                            textValue: "Input your email",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          InputWidget(
                            keyValue: keys2,
                            validationFunction: (str) {
                              if (str.length == 0) {
                                return "email must be > 0 and contains '@'";
                              }
                              if (!str.contains('@')) {
                                return "email must contains '@'";
                              }
                              return null;
                            },
                            controller: _emailController,
                            hintText: 'e-mail',
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const CustomTextWidget(
                            textValue: "Input your message",
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          InputWidget(
                            keyValue: keys3,
                            validationFunction: (str) {
                              if (str.length == 0) {
                                return "Message must be > 0";
                              }
                              return null;
                            },
                            controller: _messageController,
                            hintText: 'message',
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                      SimpleButton(
                        name: 'Add Comment',
                        function: () {
                          addComment(
                              context: blocPostContext,
                              commentsCount: commentsCount);
                          Navigator.pop(dialogContext);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void addComment({required int commentsCount, required BuildContext context}) {
    bool _first = keys1.currentState!.validate();
    bool _second = keys2.currentState!.validate();
    bool _third = keys3.currentState!.validate();
    if (!_first || !_second || !_third) {
      return;
    }
    comment = Comment(
      postId: post.id,
      name: _nameController.text,
      email: _emailController.text,
      body: _messageController.text,
      id: commentsCount + 1,
    );
    context.read<CharacterPostBloc>().add(
          CharacterPostEvent.addComment(comment: comment!,),
        );
  }
}
