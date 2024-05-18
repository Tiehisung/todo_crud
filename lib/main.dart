import 'package:flutter/material.dart';
import 'package:todo_crud/screens/home.dart';

void main() {
  runApp(const MyApp());
}

//Class widget. Other type of widget is functional widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override //Decorator
  Widget build(BuildContext context) {
    //Function with name build, return type of widget and it takes parameter called context, which is a datatype buildContext
    return MaterialApp(
      title: 'Meetup profile app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

