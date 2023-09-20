import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class SecondTextField extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final String letter;
  final IconData icons;
  const SecondTextField({Key? key, required this.width, required this.height, required this.text, required this.letter, required this.icons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        SizedBox(height: 8,),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(text,style: Appstyle.eleven(Colors.grey),),
        ),
        Row(children: [
          SizedBox(width: 12,),
          Text(letter,style: Appstyle.fifteen(Colors.black),),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 14,bottom: 4),
            child: Icon(icons,color: Colors.blue,size: 24,),
          )
        ],)
      ],),
    );
  }
}
