import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users_todo/providers/user_provider.dart';
import 'package:users_todo/views/components/user_tile.dart';

import '../../models/user.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserProvider users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Contatos'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              users.put(
                  User(name: 'teste', email: 'teste@test.com', avatarUrl: ''));
            },
          )
        ],
      ),
      body: ListView.builder(
        // itemCount: users.count,
        // itemBuilder: (context, indice) => UserTile(
        //   users.byIndex(indice),
        // ),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
