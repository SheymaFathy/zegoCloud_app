import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/video_call.dart';
import '../view/voice_call.dart';

class CallController extends GetxController {
  final TextEditingController callIdController = TextEditingController();

  void startVideoCall() {
    Get.to(() => VideoCallPage(callId: callIdController.text));
  }

  void startVoiceCall() {
    Get.to(() => VoiceCallPage(callId: callIdController.text));
  }
}
