import 'package:flutter/material.dart';
import 'package:user_app/features/user_list/domain/entetties/user.dart';
import 'package:user_app/features/user_list/ui/users_screen/widgets/list_item.dart';

class ListViewBuilder extends StatelessWidget {
  final List<User> userList;

  const ListViewBuilder({Key? key,required this.userList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: userList.length,
      itemBuilder: (context, index) {
        return UserListItem(
          user: userList[index],
        );
      },
    );
  }
}
