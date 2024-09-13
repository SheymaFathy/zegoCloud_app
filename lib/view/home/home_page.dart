import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_cloud/view/widgets/chat_row.dart';
import 'package:zego_cloud/view/widgets/home_image.dart';
import 'package:zego_cloud/view/widgets/welcom_text.dart';
import '../../constant/colors.dart';
import '../../controller/call_controller.dart';
import '../../controller/chat_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final callController = Get.put(CallController()); // ربط الكونترولر بـ GetX
  final chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title:
            const Text(" ZegoCloud App", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              const HomeImage(),
              const SizedBox(
                height: 60,
              ),
              const WelcomeText(),
              const SizedBox(
                height: 60,
              ),
              ChatRow(callController: callController),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}






