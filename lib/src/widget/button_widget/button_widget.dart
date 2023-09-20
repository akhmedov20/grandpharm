
import 'package:flutter/material.dart';
import 'package:grandpharm/src/widget/color/color_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class ButtonWidget extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double height;
  final double width;
  final double circle;
  final double horizontal;
  final double vertical;
  const ButtonWidget({Key? key, required this.text, required this.height, required this.circle, required this.horizontal, required this.width, required this.onTap, required this.vertical,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: horizontal,vertical: vertical),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(circle)
        ),child: Center(child: Text(text,style: Appstyle.seventeen(Colors.white),)),
      ),
    );
  }
}
