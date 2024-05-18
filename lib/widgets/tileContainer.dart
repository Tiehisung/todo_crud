import 'package:flutter/material.dart';
import 'package:todo_crud/models/todo_model.dart';
import 'package:todo_crud/screens/edit_screen.dart';
import 'package:todo_crud/widgets/textWidget.dart';

class TileContainerWidget extends StatefulWidget {
  final TodoModel todo;
  const TileContainerWidget({
    super.key,
    required this.deviceSize,
    required this.todo,
  });

  final Size deviceSize;

  @override
  State<TileContainerWidget> createState() => _TileContainerWidgetState();
}

class _TileContainerWidgetState extends State<TileContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(20)),
        height: widget.deviceSize.height * 0.15,
        width: widget.deviceSize.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  txt: widget.todo.title,
                  txtColor: Colors.white,
                  txtFontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                TextWidget(
                  txt: widget.todo.description,
                  txtColor: Colors.white,
                  txtFontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ],
            ),
            Row(
              children: [
                //Edit
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  EditTodoScreen(todo: widget.todo))));
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 36,
                    )),

                //Delete
                IconButton(
                    onPressed: () {
                      setState(() {
                        deleteTodo(widget.todo);
                      });
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red.shade900,
                      size: 36,
                    )),
              ],
            )
          ],
        ));
  }
}
