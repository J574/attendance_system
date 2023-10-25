import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController name = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(labelText: 'Enter Name'),),
            TextField(
              controller: phoneNumber,
              decoration: InputDecoration(labelText: 'Enter Number'), keyboardType: TextInputType.number,),
            ElevatedButton(onPressed: () {
                
            }, child: Text('Add'))
          ],
        ),
      ),
    );
  }
}
