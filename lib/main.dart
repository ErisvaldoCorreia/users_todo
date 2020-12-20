import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users_todo/providers/user_provider.dart';
import 'package:users_todo/views/pages/user_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: UserList(),
      ),
    );
  }
}
