import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import '../../controller/call_controller.dart';
import '../text_chat/text_chat_login.dart';
import '../calling/video_call_code.dart';

class ChatRow extends StatelessWidget {
  const ChatRow({
    super.key,
    required this.callController,
  });

  final CallController callController;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          color: AppColor.primaryColor,
        ),
        IconButton(
          onPressed: () {
            callController.startVoiceCall();
          },
          icon: const Icon(
            Icons.phone,
            size: 35,
          ),
          color: AppColor.primaryColor,
        ),
        IconButton(
          onPressed: () {
            Get.to(() => const LoginPage());
          },
          icon: const Icon(
            Icons.message,
            size: 35,
          ),
          color: AppColor.primaryColor,
        ),
      ],
    );
  }
}