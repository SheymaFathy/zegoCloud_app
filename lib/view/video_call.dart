import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_cloud/constant/app_info.dart';

final userId = math.Random().nextInt(9999);

class VideoCallPage extends StatelessWidget {
  final String callId;
  const VideoCallPage({super.key, required this.callId});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: AppInfo.appId,
      appSign: AppInfo.appSign,
      callID: callId,
      userID: userId.toString(),
      userName: 'User $userId',
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
