import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/model/articl_model.dart';
import 'package:grandpharm/src/model/box_model.dart';
import 'package:grandpharm/src/model/picture_model.dart';
import 'package:grandpharm/src/ui/articles/articl_screen.dart';
import 'package:grandpharm/src/ui/drugs/drugs_screen.dart';
import 'package:grandpharm/src/ui/menu/home/search_screen.dart';
import 'package:grandpharm/src/ui/offers/offers_screen.dart';
import 'package:grandpharm/src/widget/article/articl_widget.dart';
import 'package:grandpharm/src/widget/box/box_widget.dart';
import 'package:grandpharm/src/widget/pictures/picture_widget.dart';
import 'package:grandpharm/src/widget/product/product_widget.dart';
import 'package:grandpharm/src/widget/search/search_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../../../dialog/bottom-dialog/search_dialog.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <BoxModel> box = [
    BoxModel(text: "Sizni", letter: "Kartangiz", image: "assets/images/purple.png", icon: "assets/icons/ccc.svg",),
    BoxModel(text: "Karta", letter: "Apteka", image: "assets/images/cosmos.png", icon: "assets/icons/n.svg",),
    BoxModel(text: "Ko'rish", letter: "Aptekada", image: "assets/images/backgroundsecond.png", icon: "assets/icons/medical.svg",),
    BoxModel(text: "Karta", letter: "Apteka", image: "assets/images/cosmos.png", icon: "assets/icons/n.svg",),
  ];
  List <PictureModel> images = [
   PictureModel(picture: "assets/images/baby.png",),
   PictureModel(picture: "assets/images/cosmos.png",),
   PictureModel(picture: "assets/images/purple.png",),
  ];
  List <ArticlModel> art = [
    ArticlModel(letter: "10 - iyul", text: "Недержание у взрослых: как сохранить здоровье", image: "assets/images/women.png"),
    ArticlModel(letter: "10 - iyul", text: "Недержание у взрослых: как сохранить здоровье", image: "assets/images/cosmos.png"),
    ArticlModel(letter: "10 - iyul", text: "Лекарство для печени", image: "assets/images/skelet.png"),
  ];
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
           SearchWidget(),
            SizedBox(height: 20,),
            SizedBox(width: MediaQuery.of(context).size.width,height: 115,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: box.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: BoxWidget(text: box[index].text, image: box[index].image,
                          icon: box[index].icon, letter: box[index].letter),
                    );
                  }
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(width: MediaQuery.of(context).size.width,
              height: 155,
              child: Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding:  EdgeInsets.only(left: 8,right: 8),
                        child: PictureWidget(picture: images[index].picture),
                      );
                    }
                ),),
            ),
            SizedBox(height: 20,),
            Row(children: [
              SizedBox(width: 15,),
              Text("Eng zo'r takliflar",style: GoogleFonts.aladin(
                textStyle: Appstyle.twenty(Colors.black),
              ),),
              Spacer(),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                return OffersScreen();
                }));
              }, child: Text("Hammasi",style: GoogleFonts.aladin(
                textStyle: Appstyle.twenty(Colors.blue),
              ),),)
            ],),
            SizedBox(width: MediaQuery.of(context).size.width,
              height: 205,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ProductWidget(images: "assets/images/ayflox.png",
                      text: "АЙФЛОКС капли глазные 0,3% 5 мл",
                      letter: "Aseptica, ООО", price: "120 000 сум", onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade,alignment: Alignment.bottomCenter,child: DrugsScreen()));
                    },),
                  ProductWidget(images: "assets/images/ayflix.png",
                      text: "АЙФЛОКС капли глазные 0,3% 5 мл",
                      letter: "Aseptica, ООО", price: "99 000 сум", onTap: () {  },),
                  ProductWidget(images: "assets/images/ayinda.png",
                      text: "АЙФЛОКС капли глазные 0,3% 5 мл",
                      letter: "Aseptica, ООО", price: "120 000 сум", onTap: () {  },),
                  ProductWidget(images: "assets/images/ayflox.png",
                      text: "АЙФЛОКС капли глазные 0,3% 5 мл",
                      letter: "Aseptica, ООО", price: "120 000 сум", onTap: () {  },),
                ],
              ),
            ),
            Row(children: [
              SizedBox(width: 15,),
              Text("Foydali maqolalar",style: GoogleFonts.aladin(
                textStyle: Appstyle.twenty(Colors.black),
              ),),
              SizedBox(width: 165,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ArticlScreen();
                }));
              }, child: Text("Hammasi",style: GoogleFonts.aladin(
                textStyle: Appstyle.twenty(Colors.blue),
              ),),)
            ],),
            SizedBox(height: 10,),
            SizedBox(width: MediaQuery.of(context).size.width,
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: art.length,
                itemBuilder: (context,index){
                  return ArticlWidget(images: art[index].image, text: art[index].text, letter: art[index].letter);
                },
               ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      )
    );
  }
}
