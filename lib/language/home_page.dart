import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'fr.dart';

class HomePageLn extends StatelessWidget {
  const HomePageLn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home_page'.tr),),
      body: Column(
        children: [
          Text('how_are_you?'.tr),
          Text('hi'.tr),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (

                  ) {
                Get.updateLocale(Locale('en'));
                GetStorage().write('locale', Locale('en'));
              }, child: Text("English"),),
              ElevatedButton(onPressed: () {
                Get.updateLocale(Locale('fr'));
                GetStorage().write('locale', Locale('fr'));
              }, child: Text("french"),),
              ElevatedButton(onPressed: () {
                Get.updateLocale(Locale('ar'));
                GetStorage().write('locale', Locale('ar'));
              }, child: Text("arabic"),),


            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {

          }, child: Text("Product page"),),
        ],
      )
    );
  }
}
