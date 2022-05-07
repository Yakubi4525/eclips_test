import 'package:flutter/material.dart';
import 'package:user_app/features/user_list/domain/entetties/comment.dart';
import 'package:user_app/features/user_list/ui/character_post_screen/widgets/comment_item.dart';

class CommentViewWidget extends StatelessWidget {
  final List<Comment> commentList;
  final ScrollController scrollController;

  const CommentViewWidget(
      {Key? key, required this.commentList, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      controller: scrollController,
      itemCount: commentList.length,
      itemBuilder: (context, index) {
        return CommentItem(
          comment: commentList[index],
        );
      },
    );
  }
}
