import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../controller/call_controller.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField({
    super.key,
    required this.callController,
  });

  final CallController callController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text("Voice Call Code", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            width: 250,
            child: Column(
              children: [
                Text(
                  "To continue the Voice call, please create a unique call code",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20,
                      overflow: TextOverflow.fade),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15,),
                TextField(
                  controller: callController.callIdController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Voic Call Code",
                    hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  style: TextStyle(color: AppColor.primaryColor),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15,),
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    fixedSize: const Size(250, 50)),
                onPressed: () =>callController.startVoiceCall(),
                child: const Text(
                  'Start Now',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
