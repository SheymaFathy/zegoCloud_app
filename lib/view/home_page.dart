import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_cloud/view/login_page.dart';
import 'package:zego_cloud/view/video_call_code.dart';
import '../constant/colors.dart';
import '../controller/call_controller.dart';
import '../controller/chat_controller.dart';

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
              ClipRRect(
                borderRadius: BorderRadius.circular(150.0),
                child: Image.network(
                  "https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/452996891_3169209673209193_6548377283858353971_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=vEPGpRlGaVAQ7kNvgFXmRaZ&_nc_ht=scontent.fcai21-4.fna&_nc_gid=AXbJRXI0pFnE0smOmMkDgd_&oh=00_AYAIrLTj2tKYesaQypgH0H40ABdH5sZuB_K7U1opSwFt1w&oe=66E73BF9",
                  height: 150.0,
                  width: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                "Welcome Back ",
                style: TextStyle(color: AppColor.primaryColor, fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(
                        VideoCallCode(callController: callController),
                      );
                    },
                    icon: const Icon(
                      Icons.video_call,
                      size: 44,
                    ),
                    color: Colors.redAccent,
                  ),
                  IconButton(
                    onPressed: () {
                      callController.startVoiceCall();
                    },
                    icon: const Icon(
                      Icons.phone,
                      size: 35,
                    ),
                    color: Colors.redAccent,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.to(() => const LoginPage());
                    },
                    icon: const Icon(
                      Icons.message,
                      size: 35,
                    ),
                    color: Colors.redAccent,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
