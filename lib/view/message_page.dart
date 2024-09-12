// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:zego_zimkit/zego_zimkit.dart';
// import '../controller/chat_controller.dart';
//
// class MessagePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final ChatController chatController = Get.find();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Obx(() {
//           final conversation = chatController.selectedUser.value;
//           return Text(conversation != null ? conversation.name ?? "محادثة" : "محادثة");
//         }),
//       ),
//       body: Obx(() {
//         final conversationId = chatController.selectedUser.value?.id ?? '';
//         return ZIMKitMessageListView(
//           conversationID: conversationId,
//         );
//       }),
//     );
//   }
// }
