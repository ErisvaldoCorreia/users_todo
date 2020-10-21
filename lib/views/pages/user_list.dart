import 'package:flutter/material.dart';
import 'package:users_todo/data/mock_users.dart';
import 'package:users_todo/views/components/user_tile.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...MOCK_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, indice) =>
            UserTile(users.values.elementAt(indice)),
      ),
    );
  }
}
