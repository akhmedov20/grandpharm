import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/ui/korzina/order/mistake.dart';
import 'package:grandpharm/src/ui/login/login_screen.dart';
import 'package:grandpharm/src/widget/button_widget/button_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';
import 'package:page_transition/page_transition.dart';

class KorzinaScreen extends StatefulWidget {
  const KorzinaScreen({Key? key}) : super(key: key);

  @override
  State<KorzinaScreen> createState() => _KorzinaScreenState();
}

class _KorzinaScreenState extends State<KorzinaScreen> {
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
  void adda() {
    setState(() {
      _na++;
    });
  }
  void minusa() {
    setState(() {
      if (_na != 0)
        _na--;
    });
  }
  int _n = 0;
  int _na = 0;
  bool _www = false;
  bool _ww = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 35,),
          Center(
            child: Text("Korzina",style: GoogleFonts.roboto(
              textStyle: Appstyle.eighteen(Colors.black)
            ),),
          ),
          Center(
            child: Text("3 tovar",style: GoogleFonts.roboto(
                textStyle: Appstyle.fourteen(Colors.grey)
            ),),
          ),
          SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(height: 10,),
          Container(
            width: 359,
            height: 160,
            child: Row(children: [
              Container(
                width: 112,
                height: 112,
                child: Image.asset("assets/images/ayinda.png"),
              ),
              Container(
                width: 247,
                height: 160,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(height: 8,),
                  Text("АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер",style: GoogleFonts.roboto(
                      textStyle: Appstyle.fourteen(Colors.black)
                  ),),
                  SizedBox(height: 8,),
                  Text("Эвалар",style: GoogleFonts.roboto(
                      textStyle: Appstyle.twelve(Colors.grey)
                  ),),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text("39 000 сум",style: GoogleFonts.roboto(
                        textStyle: Appstyle.sixteen(Colors.red)
                    ),),
                    SizedBox(width: 15,),
                    Text("59 000 сум",
                      style: GoogleFonts.roboto(
                          textStyle: Appstyle.fourteen(Colors.grey),
                          decoration: TextDecoration.lineThrough
                      ),),
                  ],),
                  SizedBox(height: 5,),
                  Row(children: [
                   Container(
                     width: 120,
                     height: 30,
                     child: Row(children: [
                       GestureDetector(onTap: (){
                         minus();
                       },
                         child: Container(
                           width: 20,height: 20,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.blue,
                         ),
                         child: Center(child: Icon(CupertinoIcons.minus,color: Colors.white,size: 18,)),),
                       ),
                       SizedBox(width: 15,),
                       Text("$_n",style: Appstyle.fourteen(Colors.blue),),
                       SizedBox(width: 5,),
                       Text("dona",style: Appstyle.fourteen(Colors.blue),),
                       Spacer(),
                       GestureDetector(onTap: (){
                         add();
                       },
                         child: Container(
                           width: 20,height: 20,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.blue,
                           ),
                           child: Center(child: Icon(CupertinoIcons.plus,color: Colors.white,size: 18,)),),
                       ),
                     ],),
                   ),
                    Spacer(),
                    IconButton(onPressed: (){
                      setState(() {
                        _www = !_www;
                      });
                    }, icon: Icon(Icons.favorite,color: _www ? Colors.red : Colors.grey))
                  ],),

                ],),
              ),
            ],),
          ),
          Container(
            width: 359,
            height: 160,
            child: Row(children: [
              Container(
                width: 112,
                height: 112,
                child: Image.asset("assets/images/bifiform.png"),
              ),
              Container(
                width: 247,
                height: 160,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(height: 8,),
                  Text("Бифиформ капс. №30",style: GoogleFonts.roboto(
                      textStyle: Appstyle.fourteen(Colors.black)
                  ),),
                  SizedBox(height: 8,),
                  Text("Эвалар",style: GoogleFonts.roboto(
                      textStyle: Appstyle.twelve(Colors.grey)
                  ),),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text("11 000 сум",style: GoogleFonts.roboto(
                        textStyle: Appstyle.sixteen(Colors.red)
                    ),),
                  ],),
                  SizedBox(height: 5,),
                  Row(children: [
                    Container(
                      width: 120,
                      height: 30,
                      child: Row(children: [
                        GestureDetector(onTap: (){
                          minusa();
                        },
                          child: Container(
                            width: 20,height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue,
                            ),
                            child: Center(child: Icon(CupertinoIcons.minus,color: Colors.white,size: 18,)),),
                        ),
                        SizedBox(width: 15,),
                        Text("$_na",style: Appstyle.fourteen(Colors.blue),),
                        SizedBox(width: 5,),
                        Text("dona",style: Appstyle.fourteen(Colors.blue),),
                        Spacer(),
                        GestureDetector(onTap: (){
                          adda();
                        },
                          child: Container(
                            width: 20,height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue,
                            ),
                            child: Center(child: Icon(CupertinoIcons.plus,color: Colors.white,size: 18,)),),
                        ),
                      ],),
                    ),
                    Spacer(),
                    IconButton(onPressed: (){
                      setState(() {
                        _ww = !_ww;
                      });
                    }, icon: Icon(Icons.favorite,color: _ww ? Colors.red : Colors.grey,))
                  ],),

                ],),
              ),
            ],),
          ),
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Text("Sizni korzinkangiz",style: Appstyle.twenty(Colors.black),),
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 15,),
            Text("Tovarlarni soni,donasi",style: Appstyle.twelve(Colors.grey),),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text((_n+_na).toString(),style: Appstyle.twelve(Colors.grey),),
            ),
          ],),
          SizedBox(height: 15,),
          Row(children: [
            SizedBox(width: 15,),
            Text("Tovarlar narxi",style: Appstyle.twelve(Colors.grey),),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text("50 000 so'm",style: Appstyle.twelve(Colors.grey),),
            ),
          ],),
          SizedBox(height: 15,),
          Row(children: [
            SizedBox(width: 15,),
            Text("Chegirma",style: Appstyle.twelve(Colors.grey),),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text("-10 000 so'm (20%)",style: Appstyle.twelve(Colors.blue),),
            ),
          ],),
          SizedBox(height: 25,),
          Row(children: [
            SizedBox(width: 15,),
            Text("Jami",style: Appstyle.sixteen(Colors.black),),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text("40 000 so'm",style: Appstyle.sixteen(Colors.black),),
            ),
          ],),
          SizedBox(height: 50,),
         GestureDetector(
           onTap: (){
             Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: Mistake(),alignment: Alignment.center));
           },
           child: Container(
             margin: EdgeInsets.symmetric(horizontal: 15),
             width: MediaQuery.of(context).size.width,
             height: 52,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.blue[900]
             ),
             child: Center(child: Text("To'lovga o'ting",style: Appstyle.eighteen(Colors.white),),),
           ),
         )
        ],
      ),
    );
  }
}
