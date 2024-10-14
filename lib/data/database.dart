import 'package:hive_flutter/hive_flutter.dart';

class TodoData {
  List todolist = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    todolist = [
      ["Example task", false]
    ];
  }

  void loadData() {
    todolist = _mybox.get("TODOLIST");
  }

  void updateData() {
    _mybox.put("TODOLIST", todolist);
  }
}
