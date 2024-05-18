import 'package:flutter/material.dart';
import 'package:todo_crud/models/todo_model.dart';
import 'package:todo_crud/screens/home.dart';
import 'package:todo_crud/widgets/buttons.dart';
import 'package:todo_crud/widgets/inputWidget.dart';
import 'package:todo_crud/widgets/textWidget.dart';

class EditTodoScreen extends StatefulWidget {
  final TodoModel todo;
  const EditTodoScreen({super.key, required this.todo});

  @override
  State<EditTodoScreen> createState() => _EditTodoScreenState();
}

class _EditTodoScreenState extends State<EditTodoScreen> {
  @override
  Widget build(BuildContext context) {
    var titleTxtController = TextEditingController(text: widget.todo.title);
    var descTxtController =
        TextEditingController(text: widget.todo.description);

    void onEditTodo() {
      var newTodo = TodoModel(
          title: titleTxtController.text, description: descTxtController.text);
      editTodo(widget.todo, newTodo);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green[100],
          content: Column(
            children: [
              const Center(
                child: Icon(Icons.check_circle_outline_outlined,
                    color: Colors.green),
              ),
              TextWidget(
                txt: "Saved",
                txtColor: Colors.green[900],
              )
            ],
          )));

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }

    return Scaffold(
        appBar: AppBar(title: const Text("Edit Todo")),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              //Title
              InputWidget(
                txtController: titleTxtController,
                label: "Title",
                hintTxt: "Todo title here",
              ),

              const SizedBox(
                height: 30,
              ),
              //Description
              InputWidget(
                txtController: descTxtController,
                label: "Description",
                hintTxt: "Todo description here",
                maxlines: 7,
              ),
              const SizedBox(
                height: 30,
              ),

              //Button
              PrimaryBtnWidget(buttonTxt: "Save changes", onPressed: onEditTodo)
            ],
          ),
        ));
  }
}
