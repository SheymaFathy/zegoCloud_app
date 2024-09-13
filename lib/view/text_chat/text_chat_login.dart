import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';
import '../../constant/colors.dart';
import 'chat_view.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
final userId = TextEditingController();
final username = TextEditingController();
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: const Text("User Info",  style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller:userId ,
              decoration: const InputDecoration(
                labelText: "User Id",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 15,),
            TextFormField(
              controller:username ,
              decoration: const InputDecoration(
                labelText: "User Name",
                  border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: AppColor.primaryColor,fixedSize: const Size(250, 50)),
                onPressed: ()async{
              await ZIMKit().connectUser(id: userId.text, name: username.text);
              // ignore: use_build_context_synchronously
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatView()));
            },
                child: const Text("Start Chating", style: TextStyle(color: Colors.white, fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
