

import 'package:user_app/features/user_list/domain/entetties/comment.dart';

class ServiceRequest {
  static Map getCommentBody(Comment comment) {
    return {
      "postId": comment.postId,
      "id": comment.id,
      "name": comment.name,
      "email": comment.email,
      "body": comment.body
    };
  }
}
