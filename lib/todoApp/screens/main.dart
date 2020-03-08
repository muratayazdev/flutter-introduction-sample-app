import 'package:flutter/material.dart';
import 'package:firstapp/todoApp/util/dbHelper.dart';
import 'package:firstapp/todoApp/model/todo.dart';
import './todoList.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    List<Todo> todos = List<Todo>();
//    DbHelper helper = DbHelper();
//    helper.initializeDb().then(
//        (result) {
//          helper.getTodos().then((result) => todos = result);
//        }
//    );
//
//    DateTime today = DateTime.now();
//
//    Todo todo = Todo("Buy apples", 1, today.toString(), "asdf");
//    helper.insertTodo(todo);

    return new Scaffold(
      appBar: AppBar(title: Text("Todos")),
      body: TodoList(),
    );
  }
}
