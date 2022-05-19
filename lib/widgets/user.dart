import 'dart:math';

import 'package:flutter/material.dart';
import '../models/user.dart' as model;

class User extends StatelessWidget {
  const User({Key? key, required this.user}) : super(key: key);

  final model.User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: randomColor()),
      subtitle: Text(user.age.toString()),
      trailing: Text(user.name),
    );
  }

  Color randomColor() => Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
}
