import 'package:flutter/material.dart';
import 'package:user_app/features/user_list/ui/user_posts_screen/widgets/post_item.dart';
import 'package:user_app/features/user_list/domain/entetties/post.dart';

class PostViewWidget extends StatelessWidget {
  final ScrollController scrollController;
  final List<Post> postList;
  final int count;

  const PostViewWidget(
      {Key? key,
      required this.postList,
      required this.scrollController,
      required this.count})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: count,
      itemBuilder: (context, index) {
        return PostItem(
          post: postList[index],
        );
      },
    );
  }
}
