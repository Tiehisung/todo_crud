import 'package:flutter/material.dart';
import 'package:todo_crud/models/todo_model.dart';
import 'package:todo_crud/screens/create_screen.dart';
import 'package:todo_crud/widgets/tileContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Todo CRUD by Coded"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            ...List.generate(
              todoList.length,
              (index) {
                final currentTodo = todoList[index];
                return TileContainerWidget(
                    todo: currentTodo, deviceSize: deviceSize);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CreateScreen();
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
