import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/textstyle/textstyle_widget.dart';

class ThirdShowBottomDialog{
  static void thirdShowBottomDialog(BuildContext context){
    showModalBottomSheet(
      isDismissible: true,
        context: context,
        builder: (BuildContext context){
        return StatefulBuilder(builder: (ctx, setState){
          return Container(
            width: 375,
            height: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Center(child: Text("Ovozli qidiruv",
                  style: GoogleFonts.roboto(
                      textStyle: Appstyle.eighteen(Colors.black)
                  ),),),
                SizedBox(height: 10,),
                SizedBox(
                  width: 270,
                  child: Text("Произнесите название препарата,\nдействующего вещества или симптом",
                    style: GoogleFonts.roboto(
                        textStyle: Appstyle.fourteen(Colors.grey)
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                SizedBox(width: 58,height: 58,
                    child: IconButton(onPressed: (){},
                        icon: SvgPicture.asset("assets/icons/voiceoutline.svg",))),
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Center(child: Text(
                    "Bekor qilish",style: GoogleFonts.aladin(
                      textStyle: Appstyle.eighteen(Colors.blue)
                  ),
                  ),),
                )
              ],
            ),
          );
        });
        }
    );
  }
}