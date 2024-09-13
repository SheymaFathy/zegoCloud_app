import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_cloud/constant/colors.dart';
import 'package:zego_zimkit/zego_zimkit.dart';
import '../../controller/chat_controller.dart';
class ChatView extends StatelessWidget {
  final ChatController chatController = Get.put(ChatController());

  ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text("Messages ", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            position: PopupMenuPosition.under,
            icon: const Icon(CupertinoIcons.add_circled),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: "New Chat ",
                  child: const ListTile(
                    leading: Icon(CupertinoIcons.chat_bubble_2_fill),
                    title: Text("New Chat", maxLines: 1),
                  ),
                  onTap: () => chatController.startNewPeerChat(context),
                ),

              ];
            },
          ),
        ],
      ),
      body: ZIMKitConversationListView(
        onPressed: (context, conversation, defaultAction) {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return ZIMKitMessageListPage(
              conversationID: conversation.id,
              conversationType: conversation.type,);
      
          }));
        },
      ),
    );
  }
}
