import 'package:flutter/material.dart';
import 'package:users_todo/data/mock_users.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const users = {...MOCK_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, indice) =>
            Text(users.values.elementAt(indice).name),
      ),
    );
  }
}
