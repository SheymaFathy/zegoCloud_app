import 'package:flutter/cupertino.dart';
import '../../constant/colors.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome Back ",
      style: TextStyle(color: AppColor.primaryColor, fontSize: 25),
    );
  }
}