import 'package:flutter/cupertino.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(150.0),
      child: Image.network(
        "https://scontent.fcai21-4.fna.fbcdn.net/v/t39.30808-6/452996891_3169209673209193_6548377283858353971_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=vEPGpRlGaVAQ7kNvgFXmRaZ&_nc_ht=scontent.fcai21-4.fna&_nc_gid=AXbJRXI0pFnE0smOmMkDgd_&oh=00_AYAIrLTj2tKYesaQypgH0H40ABdH5sZuB_K7U1opSwFt1w&oe=66E73BF9",
        height: 150.0,
        width: 150.0,
        fit: BoxFit.cover,
      ),
    );
  }
}