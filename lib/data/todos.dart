import 'package:todo_crud/models/todo_model.dart';

class TodosDB {
  List<TodoModel> todoList = [];

  void addTodo(TodoModel todo) {
    todoList.add(todo);
    print(todo);
  }

  void editTodo(TodoModel todo, TodoModel newTodo) {
    todoList[todoList.indexOf(todo)] = newTodo;
  }
}
