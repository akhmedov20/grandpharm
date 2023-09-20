import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/dialog/bottom-dialog/article_dialog.dart';
import 'package:grandpharm/src/ui/menu/home/home_screen.dart';
import 'package:grandpharm/src/widget/appbar/appbar_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

import '../menu/bottomnavigator/main_screen.dart';

class ArticlScreen extends StatefulWidget {
  const ArticlScreen({Key? key}) : super(key: key);

  @override
  State<ArticlScreen> createState() => _ArticlScreenState();
}

class _ArticlScreenState extends State<ArticlScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            AppbarWidget(write: "Maqolalar", writing: "", onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context){
                return MainScreen();
              }));
            },),
            GestureDetector(
              onTap: (){
               ArticleDialog.articlewomendialog(context);
              },
              child: Container(
                width: 375,
                height: 284,
                child: Column(
                  children: [
                    Container(
                      width:  343,
                      height: 188,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset("assets/images/imagewomen.png",fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: EdgeInsets.only(right: 305),
                      child: Text("10 iyul",style: GoogleFonts.roboto(
                          textStyle: Appstyle.fourteen(Colors.grey)
                      ),),
                    ),
                    Container(width: 375,height: 48,
                      margin: EdgeInsets.only(left: 15),
                      child: Text("Недержание у взрослых: как сохранить здоровье",style: GoogleFonts.roboto(
                          textStyle: Appstyle.sixteen(Colors.black)
                      ),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            GestureDetector(
              onTap: (){
                ArticleDialog.articleskeletdialog(context);
              },
              child: Container(
                width: 375,
                height: 284,
                child: Column(
                  children: [
                    Container(
                      width:  343,
                      height: 188,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset("assets/images/skelet.png",fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: EdgeInsets.only(right: 305),
                      child: Text("10 iyul",style: GoogleFonts.roboto(
                          textStyle: Appstyle.fourteen(Colors.grey)
                      ),),
                    ),
                    Container(width: 375,height: 48,
                      margin: EdgeInsets.only(left: 15),
                      child: Text("Jigar uchun dori",style: GoogleFonts.roboto(
                          textStyle: Appstyle.sixteen(Colors.black)
                      ),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: 375,
              height: 284,
              child: Column(
                children: [
                  Container(
                    width:  343,
                    height: 188,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Image.asset("assets/images/baby.png",fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: EdgeInsets.only(right: 305),
                    child: Text("10 iyul",style: GoogleFonts.roboto(
                        textStyle: Appstyle.fourteen(Colors.grey)
                    ),),
                  ),
                  Container(width: 375,height: 48,
                    margin: EdgeInsets.only(left: 15),
                    child: Text("Bolalar sog'ligi",style: GoogleFonts.roboto(
                        textStyle: Appstyle.sixteen(Colors.black)
                    ),),
                  )
                ],
              ),
            ),
          ],),
      )
    );
  }
}
