import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiCalls {
  static addTask(String task) async{
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('GET', Uri.parse('https://node-todo-api-yjo3.onrender.com/todos/'));
    request.body = json.encode({
      "complated": true
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
    print(response.reasonPhrase);
    }
  }

  static updateTask(int id, bool isComplated) async {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request(
        'PUT', Uri.parse('https://node-todo-api-yjo3.onrender.com/todos/?='));
    request.body = json.encode({
      "complated": true
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  }
  static deleteTask (int id) async {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('DELETE', Uri.parse('https://node-todo-api-yjo3.onrender.com/todos/?='));
    request.body = json.encode({
      "complated": true
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
    print(response.reasonPhrase);
    }
  }
  static fetchTasks() async {
    var headers = {
      'Content-Type': 'application/json'
    };
    var request = http.Request('GET', Uri.parse('https://node-todo-api-yjo3.onrender.com/todos/?='));
    request.body = json.encode({
      "complated": true
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
    print(response.reasonPhrase);
    }

  }
}