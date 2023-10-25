import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../ar.dart';
import '../en.dart';
import '../fr.dart';

class AddLocalization extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>
      {
        "en": en,
        "fr": fr,
        "ar": ar};
}
void changeLanguage(String selectedLanguage){
  final storage = GetStorage();
  storage.write('selectedLocal', selectedLanguage);
  Get.updateLocale(Locale(selectedLanguage));
}

