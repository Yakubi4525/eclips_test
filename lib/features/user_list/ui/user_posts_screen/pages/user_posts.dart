import 'package:flutter/material.dart';
import 'package:user_app/features/user_list/ui/user_posts_screen/widgets/post_view.dart';
import 'package:user_app/core/theme/color_theme.dart';
import 'package:user_app/core/theme/text_theme.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';

class UserPostScreen extends StatelessWidget {
  final List<Post> userPosts;

  const UserPostScreen({Key? key,required  this.userPosts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorPalette.white,
        title: Text(
          'All posts',
          style: TextThemes.headline2.copyWith(color: ColorPalette.black),
        ),
      ),
      body: SizedBox(
        height: _size.height,
        child: PostViewWidget(
          postList: userPosts, count: userPosts.length, scrollController: ScrollController(),
        ),
      ),
    );
  }
}
