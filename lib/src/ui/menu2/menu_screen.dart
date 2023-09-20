import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/ui/login/login_screen.dart';
import 'package:grandpharm/src/ui/menu2/profile_screen.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../korzina/order/mistake.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 40,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width,
          height: 146,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue
          ),
          child: Column(children: [
            SizedBox(height: 15,),
            Container(
              width: 308,
              height: 51,
              child: Text("Чтобы совершать покупки, копить бонусы и иметь быстрый доступ к карте лояльности войдите или зарегистрируйтесь",
              style: Appstyle.eleven(Colors.white),
              ),
            ),
            SizedBox(height: 20,),
            Row(children: [
              SizedBox(width: 24,),
              GestureDetector(onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: ProfileScreen(),alignment: Alignment.center));
              },
                child: Container(
                  width: 143,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),child: Center(child: Text("Kirish",style: Appstyle.sixteen(Colors.blue),),),
                ),
              ),
              SizedBox(width: 20,),
              GestureDetector(onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: LoginScreen(),alignment: Alignment.center));
              },
                child: Container(
                  width: 143,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    border: Border.all(width: 2,color: Colors.white)
                  ),child: Center(child: Text("Registratsiya",style: Appstyle.sixteen(Colors.white),),),
                ),
              )
            ],)
          ],),
        ),
        SizedBox(height: 30,),
        GestureDetector(onTap: (){},
          child: ListTile(
            leading: Icon(CupertinoIcons.gift,color: Colors.blue,),
            title: Text("Sodiqlik dasturi haqida",style: GoogleFonts.roboto(
                textStyle: Appstyle.sixteen(Colors.black)
            ),),
            trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
          ),
        ),
        GestureDetector(onTap: (){

        },
          child: ListTile(
            leading: Icon(Icons.location_on_outlined,color: Colors.blue,),
            title: Row(children: [
              Text("Shahar",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),SizedBox(width: 156,),
              Text("Toshkent",style: GoogleFonts.roboto(
                  textStyle: Appstyle.fourteen(Colors.grey)
              ),),
            ],),
            trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
          ),
        ),
        GestureDetector(onTap: (){},
          child: ListTile(
            leading: Icon(CupertinoIcons.plus_app,color: Colors.blue,),
            title: Text("Sevimli aptekalar",style: GoogleFonts.roboto(
                textStyle: Appstyle.sixteen(Colors.black)
            ),),
            trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
          ),
        ),
        GestureDetector(onTap: (){},
          child: ListTile(
            leading: Icon(CupertinoIcons.globe,color: Colors.blue,),
            title: Row(children: [
              Text("Til",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),SizedBox(width: 183,),
              Text("O'zbekcha",style: GoogleFonts.roboto(
                  textStyle: Appstyle.fourteen(Colors.grey)
              ),),
            ],),
            trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
          ),
        ),
        GestureDetector(onTap: (){},
          child: ListTile(
            leading: Icon(Icons.error_outline,color: Colors.blue,),
            title: Text("Ilova haqida",style: GoogleFonts.roboto(
                textStyle: Appstyle.sixteen(Colors.black)
            ),),
            trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
          ),
        ),
      ],),
    );
  }
}
