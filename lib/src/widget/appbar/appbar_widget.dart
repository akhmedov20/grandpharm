import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../ui/menu/home/home_screen.dart';
import '../textstyle/textstyle_widget.dart';

class AppbarWidget extends StatelessWidget {
  final Function() onTap;
  final String write;
  final String writing;
  const AppbarWidget({Key? key, required this.write, required this.writing, required this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 76,
      child: Row(children: [
        IconButton(
          icon: Icon(CupertinoIcons.left_chevron,color: Colors.blue,),
          onPressed: onTap,
        ),
        Container(
          width: 320,
          height: 76,
          child: Column(children: [
            SizedBox(height: 5,),
            Text(write,style: GoogleFonts.aladin(
              textStyle: Appstyle.eighteen(Colors.black),
            ),),
            Text(writing,style: GoogleFonts.roboto(
              textStyle: Appstyle.fourteen(Colors.grey),
            ),),
          ],),
        )
      ],),
    );
  }
}
