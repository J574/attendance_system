import 'package:attendance_system/todo/models/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<http.Response>(
              future: http
                  .get(Uri.parse("https://jsonplaceholder.typicode.com/users")),
              builder: (context, snapshot) {
                var body = snapshot.data?.body ?? "";
                List<UserList> users = userListFromJson(body);
                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    var user = users[index];
                    // return Container(
                    //   child: Text(user.id.toString()),
                    // );
                    return ListTile(title: Text(user.address.street),
                    subtitle: Text(user.address.city?? ""),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
