import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_cloud/view/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // إخفاء شعار التصحيح
      home: HomePage(),
    );
  }
}
