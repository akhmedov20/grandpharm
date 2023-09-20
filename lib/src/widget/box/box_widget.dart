import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class BoxWidget extends StatelessWidget {
  final String text;
  final String image;
  final String icon;
  final String letter;
  const BoxWidget({Key? key, required this.text, required this.image, required this.icon, required this.letter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(width: 113,height: 113,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(image,fit: BoxFit.cover,))),
        Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: SvgPicture.asset(icon,width: 30,height: 30,color: Colors.white,),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Text(text,style: Appstyle.twelve(Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(letter,style: Appstyle.eighteen(Colors.white),),
            ),
          ],
        ),
      ],
    );
  }
}
