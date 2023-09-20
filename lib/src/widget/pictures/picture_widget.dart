import 'package:flutter/cupertino.dart';

class PictureWidget extends StatelessWidget {
  final String picture;
  const PictureWidget({Key? key, required this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        height: 154,
        child: ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Image.asset(picture,fit: BoxFit.cover,)));
  }
}
