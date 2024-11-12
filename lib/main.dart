import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/providers/task_provider.dart';
import 'package:to_do_list_app/screens/todo_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To-Do List',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ToDoHomePage(),
      ),
    );
  }
}
