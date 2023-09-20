import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textstyle/textstyle_widget.dart';

class ArticlWidget extends StatelessWidget {
  final String images;
  final String text;
  final String letter;
  const ArticlWidget({Key? key, required this.images, required this.text, required this.letter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(right: 5,left: 5),
      width: 298,
      height: 118,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(children: [
        Container(
          width: 98,
          height: 108,
          child: ClipRRect(borderRadius: BorderRadius.circular(10),
              child: Image.asset(images,fit: BoxFit.cover,)),
        ),
        Container(
          width: 190,
          height: 108,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(letter,style: Appstyle.twelve(Colors.grey),),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(text,style: Appstyle.fourteen(Colors.black),),
              )
            ],
          ),
        )
      ],),
    );
  }
}
