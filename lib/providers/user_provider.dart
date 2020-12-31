import 'dart:math';
import 'package:flutter/material.dart';
import 'package:users_todo/data/mock_users.dart';
import 'package:users_todo/models/user.dart';

class UserProvider with ChangeNotifier {
  final Map<String, User> _items = {...MOCK_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int index) {
    return _items.values.elementAt(index);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    // altera

    // inclui novo
    final id = Random().nextDouble().toString();
    _items.putIfAbsent(
      id,
      () => User(
        id: id,
        name: user.name,
        email: user.email,
        avatarUrl: user.avatarUrl,
      ),
    );

    //notifyListeners();
  }
}
