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
}
