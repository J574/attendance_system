import 'package:get/get.dart';
import '../model/contact_list.dart';

class ContactController extends GetxController {
  final contacts = <Contact>[].obs;

  // Add contacts to the list
  void addContact(Contact contact) {
    contacts.add(contact);
  }

  // Remove a contact from the list
  void removeContact(Contact contact) {
    contacts.remove(contact);
  }
}
