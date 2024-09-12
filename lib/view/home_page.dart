import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/call_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final callController = Get.put(CallController()); // ربط الكونترولر بـ GetX

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title: const Text("تطبيق محادثة باستخدام ZegoCloud", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        // ClipRRect(
        //       borderRadius: BorderRadius.circular(150.0),
        //       child: Image.network(
        //         "https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/452996891_3169209673209193_6548377283858353971_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=vEPGpRlGaVAQ7kNvgFXmRaZ&_nc_ht=scontent.fcai21-4.fna&_nc_gid=AXbJRXI0pFnE0smOmMkDgd_&oh=00_AYAIrLTj2tKYesaQypgH0H40ABdH5sZuB_K7U1opSwFt1w&oe=66E73BF9",
        //         height: 200.0,
        //         width: 200.0,
        //         fit: BoxFit.cover,
        //       ),
        //     ),

      const Text(
              "مرحباً بك",
              style: TextStyle(color: Colors.redAccent, fontSize: 32),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SizedBox(
                width: 250,
                child: TextField(
                  controller: callController.callIdController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "ادخل كود الاتصال",
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                  style: const TextStyle(color: Colors.green),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple[900],fixedSize: Size(250, 50)),
              onPressed: () => callController.startVideoCall(),
              child: const Text('بدء محادثة فيديو',
                style: TextStyle(fontSize: 15, color: Colors.white),),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple[900],fixedSize: Size(250, 50)),
              onPressed: () => callController.startVoiceCall(),
              child: const Text('بدء محادثة صوتية',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),








      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     ClipRRect(
      //       borderRadius: BorderRadius.circular(150.0),
      //       child: Image.network(
      //         "https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/452996891_3169209673209193_6548377283858353971_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=vEPGpRlGaVAQ7kNvgFXmRaZ&_nc_ht=scontent.fcai21-4.fna&_nc_gid=AXbJRXI0pFnE0smOmMkDgd_&oh=00_AYAIrLTj2tKYesaQypgH0H40ABdH5sZuB_K7U1opSwFt1w&oe=66E73BF9",
      //         height: 200.0,
      //         width: 200.0,
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     const Text(
      //       "مرحباً بك",
      //       style: TextStyle(color: Colors.redAccent, fontSize: 32),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 30.0),
      //       child: TextField(
      //         controller: callController.callIdController,
      //         decoration: const InputDecoration(
      //           border: OutlineInputBorder(),
      //         ),
      //         style: const TextStyle(color: Colors.green),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //
      //
      //
      //
      //           IconButton(
      //             onPressed: () {
      //               callController.startVideoCall();
      //             },
      //             icon: const Icon(
      //               Icons.video_call,
      //               size: 44,
      //             ),
      //             color: Colors.redAccent,
      //           ),
      //           IconButton(
      //             onPressed: () {
      //               callController.startVoiceCall();
      //             },
      //             icon: const Icon(
      //               Icons.phone,
      //               size: 35,
      //             ),
      //             color: Colors.redAccent,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
