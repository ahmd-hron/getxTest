import 'package:get/get.dart';
import 'package:getx_app/models/user.dart';

class UsersController extends GetxController {
  final List<User> _users = [
    User(name: 'ahmd', age: 23, id: '1'),
    User(name: 'rami', age: 24, id: '2'),
    User(name: 'rabie', age: 24, id: '3'),
  ];

  List<User> get users => _users;

  void addUser(String name, int age) {
    final String id = '${_users.last.id} 1';
    User newUser = User(name: name, age: age, id: id);
    _users.add(newUser);
    update();
  }

  void removeUser(String id) {
    int index = _users.indexWhere((element) => element.id == id);
    _users.remove(_users[index]);
    update();
  }
}
