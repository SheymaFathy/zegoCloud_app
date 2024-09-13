import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_cloud/constant/textchat_info.dart';
import 'package:zego_cloud/view/home/home_page.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ZIMKit().init(appID: AppChatInfo.chatAppId, appSign: AppChatInfo.chatAppSign);
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
