import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class ThirdTextField extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final String letter;
  const ThirdTextField({Key? key, required this.width, required this.height, required this.text, required this.letter,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Column(children: [
         Padding(
           padding: const EdgeInsets.only(left: 12,),
           child: Flex(
             direction: Axis.horizontal,
             children: [Expanded(
               child: TextField(
                 controller: _controller,
                 decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: text,
                     hintStyle: Appstyle.eleven(Colors.grey),
                     counterText: letter,
                     counterStyle: Appstyle.fifteen(Colors.black)
                 ),
               ),
             ),],
           )
         )
      ],),
    );
  }
}
