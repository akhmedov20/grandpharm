import 'package:flutter/material.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  const TextFieldWidget ({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  TextEditingController controller = TextEditingController();
  return Container(
  margin: EdgeInsets.symmetric(horizontal: 16),
  padding: EdgeInsets.only(left: 20,bottom: 10),
  width: MediaQuery.of(context).size.width,
  height: 52,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.grey[100],
  ),
  child: Flex(
    direction: Axis.horizontal,
    children: [
      Expanded(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            hintStyle: Appstyle.fourteen(Colors.grey),
          ),
        ),
      ),
    ],
  ),
  );
  }
}
