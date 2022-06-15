import 'package:flutter/material.dart';
import 'package:todo/screen/add_todo.dart';
import 'package:todo/screen/homepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      initialRoute: 'homepage',
      routes: {
        'homepage': ((context) => HomePage()),
        'add_todo': ((context) => AddTodo())
      },
    );
  }
}
