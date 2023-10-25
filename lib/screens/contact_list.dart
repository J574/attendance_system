import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/contactlist_controller.dart';
import 'contact_add.dart';

class ContactListPage extends StatelessWidget {
  final ContactController _contactController = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: Obx(
            () => ListView.builder(
          itemCount: _contactController.contacts.length,
          itemBuilder: (context, index) {
            final contact = _contactController.contacts[index];
            return ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.phoneNumber),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  _contactController.removeContact(contact);
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTask(),)
          );
          // Open a dialog or a new screen to add a contact
          // You can use Get.to() to navigate to a new screen
          // and Get.dialog() to show a dialog.
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
