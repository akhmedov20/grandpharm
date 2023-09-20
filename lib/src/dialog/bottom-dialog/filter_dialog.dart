import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../ui/catalog/for men/filtr_screen.dart';
import '../../ui/catalog/producter/producter_screen.dart';
import '../../widget/textstyle/textstyle_widget.dart';

class SecondShowBottomDialog{
  static void secondShowBottomDialog(BuildContext context){
    double start = 1000.0;
    double end = 1000000.0;
    showModalBottomSheet(
        isDismissible: true,
        context: context,
        builder: (BuildContext context){
          return StatefulBuilder(builder: (ctx,setState){
            return Container(
              width: 375,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(15),
                    left: Radius.circular(15),
                  )
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8,),
                  Center(child: Text("Filtr",style: GoogleFonts.aladin(
                      textStyle: Appstyle.twenty(Colors.black)
                  ),),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Narxi",style: Appstyle.fourteen(Colors.grey),),
                  ),
                  RangeSlider(
                    values: RangeValues(start,end),
                    labels: RangeLabels(start.toString(),end.toString()),
                    onChanged: (value){
                      setState(() {
                        start = value.start;
                        end = value.end;
                      });
                    },
                    min: 1000,
                    max: 1000000,
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    SizedBox(width: 10,),
                    Container(
                      width: 164,
                      height: 52,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3
                            )
                          ]
                      ),
                      child: Column(children: [
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(right: 115),
                          child: Text("Dan",style: Appstyle.twelve(Colors.grey),),
                        ),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(start.toStringAsFixed(0),style: Appstyle.fourteen(Colors.black),),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("so'm",style: Appstyle.sixteen(Colors.grey),),
                          )
                        ],)
                      ],),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width: 164,
                      height: 52,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3
                            )
                          ]
                      ),
                      child: Column(children: [
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(right: 105),
                          child: Text("Gacha",style: Appstyle.twelve(Colors.grey),),
                        ),
                        Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(end.toStringAsFixed(0),style: Appstyle.fourteen(Colors.black),),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("so'm",style: Appstyle.sixteen(Colors.grey),),
                          )
                        ],)
                      ],),
                    ),
                  ],),
                  SizedBox(height: 5,),
                  ListTile(
                    title: Text("Forma soni",style: Appstyle.fourteen(Colors.black),),
                    trailing: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.right_chevron,color: Colors.black,),),
                  ),
                  ListTile(
                    title: Text("Ishlab chiqaruvchilar",style: Appstyle.fourteen(Colors.black),),
                    trailing: IconButton(onPressed: (){
                      Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: ProducterScreen()));
                    },icon: Icon(CupertinoIcons.right_chevron,color: Colors.black,),),
                  ),
                  ListTile(
                    title: Text("Mamlakati",style: Appstyle.fourteen(Colors.black),),
                    trailing: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.right_chevron,color: Colors.black,),),
                  ),
                  ListTile(
                    title: Text("Ta'sir qiluvchi modda",style: Appstyle.fourteen(Colors.black),),
                    trailing: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.right_chevron,color: Colors.black,),),
                  ),
                  GestureDetector(onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: FiltrScreen()));
                  },
                    child: Container(margin: EdgeInsets.symmetric(horizontal: 15),
                      width: MediaQuery.of(context).size.width,height: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[900]
                      ),child: Center(child: Text("Qo'llash",style: Appstyle.sixteen(Colors.white),),),),
                  ),
                ],),
            );
          });
        }
    );  }
}