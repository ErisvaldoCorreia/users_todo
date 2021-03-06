import 'package:flutter/material.dart';
import 'package:users_todo/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl),
          );
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: ListTile(
        leading: avatar,
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: Container(
          width: 100.0,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                color: Colors.green,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
