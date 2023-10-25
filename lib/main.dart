import 'package:attendance_system/language/localization/add_localization.dart';
import 'package:attendance_system/screens/login_screen.dart';
import 'package:attendance_system/todo/screens/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import 'home_page.dart';
import 'language/home_page.dart';
import 'screens/contact_list.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final savedLocal = GetStorage().read('selectedLocal');
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,

      ),
      locale: savedLocal != null ? Locale(savedLocal) : Locale('ar'),
      translations: AddLocalization(),
      home: HomePageLn(),
    );
  }
}

