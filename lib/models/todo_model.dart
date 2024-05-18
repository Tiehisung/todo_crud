// ignore_for_file: public_member_api_docs, sort_constructors_first
class TodoModel {
  String title;
  String description;
  TodoModel({
    required this.title,
    required this.description,
  });
}

List<TodoModel> todoList = [];

void addTodo(TodoModel todo) {
  todoList.add(todo);
  print(todo);
}

void editTodo(TodoModel todo, TodoModel newTodo) {
  todoList[todoList.indexOf(todo)] = newTodo;
}

void deleteTodo(TodoModel todo) {
  todoList.remove(todo);
}
