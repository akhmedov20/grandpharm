import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/ui/catalog/vitamin/vitamin_screen.dart';

import '../../widget/search/search_widget.dart';
import '../../widget/textstyle/textstyle_widget.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45,),
            SearchWidget(),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/fire.png",),
                  SizedBox(width: 10,),
                  Text("Eng dolzarlari",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/pill.png",),
                  SizedBox(width: 10,),
                  Text("Dorivor preparatlar",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/beauty.png",),
                  SizedBox(width: 10,),
                  Text("Fitopreparatlar",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return VitaminScreen();
              }));
            },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/pharmacy.png",),
                  SizedBox(width: 10,),
                  Text("Vitaminlar va BADlar",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/weddingring.png",),
                  SizedBox(width: 10,),
                  Text("Oila qurish",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 25,),
                  Image.asset("assets/images/babycarriag.png",),
                  SizedBox(width: 20,),
                  Text("Ona va chaqaloq",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/syringe.png",),
                  SizedBox(width: 10,),
                  Text("Tibbiy mahsulotlar",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/stethoscope.png",),
                  SizedBox(width: 10,),
                  Text("Tibbiy qurilmalar",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/soap.png",),
                  SizedBox(width: 10,),
                  Text("Gigiena, go'zallik va g'amxorlik",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/dumbbell.png",),
                  SizedBox(width: 10,),
                  Text("Sport va fitness",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
            GestureDetector( onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: Row(children: [
                  SizedBox(width: 15,),
                  Image.asset("assets/images/glasses.png",),
                  SizedBox(width: 10,),
                  Text("Kontaktni tuzatish",style: GoogleFonts.roboto(
                      textStyle: Appstyle.sixteen(Colors.black)
                  ),),
                ],),
              ),
            ),
          ],
        ),
      )
    );
  }
}
