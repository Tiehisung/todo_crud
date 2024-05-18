import 'package:flutter/material.dart';
import 'package:todo_crud/models/todo_model.dart';
import 'package:todo_crud/screens/home.dart';
import 'package:todo_crud/widgets/buttons.dart';
import 'package:todo_crud/widgets/inputWidget.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  var titleTxtController = TextEditingController();
  var descTxtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Create a Todo")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            PrimaryBtnWidget(buttonTxt: "Add", onPressed: onPressed)
          ],
        ),
      ),
    );
  }

  onPressed() {
    addTodo(TodoModel(
        title: titleTxtController.text, description: descTxtController.text));
    titleTxtController.clear();
    descTxtController.clear();

    showDialog(
        context: context,
        builder: ((context) => SimpleDialog(
              backgroundColor: Colors.yellow[100],
              title: const Text(
                "Todo added",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
              children: [
                Text("Todo successfully created",
                    style: TextStyle(color: Colors.green[900])),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Goto home
                    PrimaryBtnWidget(
                        buttonTxt: "Go to home",
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const HomePage())));
                        }),
                    FlatButtonWidget(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      buttonText: "Close",
                    )
                  ],
                )
              ],
            )));
  }
}
