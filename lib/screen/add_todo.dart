import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/model/todo.dart';

class AddTodo extends StatelessWidget {
  const AddTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerTitle = TextEditingController();
    TextEditingController controllerDesc = TextEditingController();
    AppBar myAppbar = AppBar(
      title: Text(
        'Add Todo',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
    double heightBody = MediaQuery.of(context).size.height -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    double widthBody = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: myAppbar,
      body: Container(
        width: widthBody,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12),
              child: TextField(
                controller: controllerTitle,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: 'Title',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: heightBody * 0.03,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12),
              child: TextField(
                controller: controllerDesc,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Description',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controllerTitle.text.length != 0 ||
              controllerDesc.text.length != 0) {
            dataTodo.add(Todo(
                id: DateTime.now().toString(),
                title: controllerTitle.text.length == 0
                    ? 'No Title'
                    : controllerTitle.text,
                desc: controllerDesc.text.length == 0
                    ? ' '
                    : controllerDesc.text));
          }
          Navigator.pop(context);
        },
        child: Icon(Icons.add_task),
      ),
    );
  }
}
