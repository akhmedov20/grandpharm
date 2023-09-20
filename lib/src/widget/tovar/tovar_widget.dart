import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../textstyle/textstyle_widget.dart';
class TovarWidget extends StatefulWidget {
  final String image;
  final String text;
  final String letter;
  final String price;
  const TovarWidget({Key? key, required this.image, required this.text, required this.letter, required this.price}) : super(key: key);

  @override
  State<TovarWidget> createState() => _TovarWidgetState();
}

class _TovarWidgetState extends State<TovarWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 359,
      height: 160,
      child: Row(children: [
        Container(
          width: 112,
          height: 112,
          child: Image.asset(widget.image),
        ),
        Container(
          width: 247,
          height: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 8,),
            Text(widget.text,style: GoogleFonts.roboto(
                textStyle: Appstyle.fourteen(Colors.black)
            ),),
            SizedBox(height: 8,),
            Text(widget.letter,style: GoogleFonts.roboto(
                textStyle: Appstyle.twelve(Colors.grey)
            ),),
            SizedBox(height: 10,),
            Text(widget.price,style: GoogleFonts.roboto(
                textStyle: Appstyle.sixteen(Colors.black)
            ),),
            SizedBox(height: 5,),
            Row(children: [
              Container(
                width: 120,height: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text(
                  "Korzinkaga",style: GoogleFonts.roboto(
                    textStyle: Appstyle.twelve(Colors.white)
                ),
                ),),
              ),
              Spacer(),
              IconButton(onPressed: (){
              }, icon: Icon(Icons.favorite,color:Colors.red))
            ],)
          ],),
        ),
      ],),
    );
  }
}
