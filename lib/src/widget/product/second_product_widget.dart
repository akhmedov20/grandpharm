import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../textstyle/textstyle_widget.dart';

class SecondProductWidget extends StatelessWidget {
  final String image;
  final String text;
  final String letter;
  final String price;
  const SecondProductWidget({Key? key, required this.image, required this.text, required this.letter, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 160,
      height: 300,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){},
            child: Container(
              width: 130,
              height: 130,
              child: Image.asset(image),
            ),
          ),
          SizedBox(height: 8,),
          Container(width: 132,height: 42,
            child: Text(text,style: GoogleFonts.roboto(
                textStyle: Appstyle.thirteen(Colors.black)
            ),),
          ),
          SizedBox(height: 8,),
          Text(letter,style: GoogleFonts.roboto(
              textStyle: Appstyle.twelve(Colors.grey)
          ),),
          SizedBox(height: 15,),
          Row(children: [
            GestureDetector(onTap: (){},
              child: Container(
                  width: 130,height: 30,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(children: [
                    SizedBox(width: 15,),
                    Text(
                      price,style: GoogleFonts.roboto(
                        textStyle: Appstyle.twelve(Colors.white)
                    ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(CupertinoIcons.cart,color: Colors.white,size: 18,),
                    )
                  ],)
              ),
            ),
          ],),
        ],),
    );
  }
}
