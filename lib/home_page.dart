import 'package:attendance_system/model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePageList extends StatefulWidget {
  const HomePageList({super.key});

  @override
  State<HomePageList> createState() => _HomePageListState();
}

class _HomePageListState extends State<HomePageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: FutureBuilder<http.Response>(future: http.get(
                Uri.parse("https://jsonplaceholder.typicode.com/todos")),
                builder: (context, snapshot) {
                  var body = snapshot.data?.body?? "";
                  List<Todos> todos = todosFromJson(body);
                  return ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      var todo = todos[index];
                      return ListTile(title: Text(todo.title),);
                  },);
                },),
          )
        ],
      ),
    );
  }
}
