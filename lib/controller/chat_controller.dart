import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';


class ChatController extends GetxController {
  // var selectedUser = Rxn<ZIMKitConversation>();

  void startNewPeerChat(BuildContext context) {
    ZIMKit().showDefaultNewPeerChatDialog(context);
  }

 
  
}
