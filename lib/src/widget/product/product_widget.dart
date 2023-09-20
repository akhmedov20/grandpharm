import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class ProductWidget extends StatefulWidget {
  final Function() onTap;
  final String images;
  final String text;
  final String letter;
  final String price;
  const ProductWidget({Key? key, required this.images, required this.text, required this.letter, required this.price, required this.onTap}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  bool _onpress = false;
  Widget build(BuildContext context) {
    return Container(
      width: 359,
      height: 160,
      child: Row(children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            width: 112,
            height: 112,
            child: Image.asset(widget.images),
          ),
        ),
        Container(
          width: 247,
          height: 160,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                setState(() {
                  _onpress = !_onpress;
                });
              }, icon: Icon(Icons.favorite,color:  _onpress ? Colors.red : Colors.grey,))
            ],)
          ],),
        ),
      ],),
    );
  }
}
