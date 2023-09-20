import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/textstyle/textstyle_widget.dart';

class ShowBottomDialog{
  static void showBottomDialog(BuildContext context){
    int _val = 0;
    showModalBottomSheet(
        isDismissible: true,
        context: context,
        builder: (BuildContext context){
          return StatefulBuilder(builder: (ctx,setState){
            return Container(
              width: 375,
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Text("По названиею (А-Я)",style: GoogleFonts.roboto(
                          textStyle: Appstyle.sixteen(Colors.black)
                      ),),
                      Spacer(),
                      Radio(
                          value: 0,
                          groupValue: _val,
                          onChanged: (val){
                            setState(() {
                              _val = val!;
                            });
                          }),
                    ],),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Text("По названиею (Я-А)",style: GoogleFonts.roboto(
                          textStyle: Appstyle.sixteen(Colors.black)
                      ),),
                      Spacer(),
                      Radio(
                          value: 1,
                          groupValue: _val,
                          onChanged: (val){
                            setState(() {
                              _val = val!;
                            });
                          }),
                    ],),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Text("По цене (по возрастанию)",style: GoogleFonts.roboto(
                          textStyle: Appstyle.sixteen(Colors.black)
                      ),),
                      Spacer(),
                      Radio(
                          value: 2,
                          groupValue: _val,
                          onChanged: (val){
                            setState(() {
                              _val = val!;
                            });
                          }),
                    ],),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Text("По цене (по убыванию)",style: GoogleFonts.roboto(
                          textStyle: Appstyle.sixteen(Colors.black)
                      ),),
                      Spacer(),
                      Radio(
                          value: 3,
                          groupValue: _val,
                          onChanged: (val){
                            setState(() {
                              _val = val!;
                            });
                          }),
                    ],),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    child: Row(children: [
                      SizedBox(width: 20,),
                      Text("По наличию скидки",style: GoogleFonts.roboto(
                          textStyle: Appstyle.sixteen(Colors.black)
                      ),),
                      Spacer(),
                      Radio(
                          value: 4,
                          groupValue: _val,
                          onChanged: (val){
                            setState(() {
                              _val = val!;
                            });
                          }),
                    ],),
                  ),
                ],
              ),
            );
          });
        }
    );  }
}