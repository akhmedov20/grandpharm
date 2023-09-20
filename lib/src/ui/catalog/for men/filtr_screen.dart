import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/dialog/bottom-dialog/filter_dialog.dart';
import 'package:grandpharm/src/dialog/bottom-dialog/filtr_dialog.dart';
import 'package:grandpharm/src/model/product_model.dart';
import 'package:grandpharm/src/ui/catalog/for%20men/for_men_screen.dart';
import 'package:grandpharm/src/ui/drugs/drugs_screen.dart';
import 'package:grandpharm/src/widget/product/product_widget.dart';
import 'package:grandpharm/src/widget/search/search_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../../../widget/textstyle/textstyle_widget.dart';
import '../producter/producter_screen.dart';

class FiltrScreen extends StatefulWidget {
  const FiltrScreen({Key? key}) : super(key: key);

  @override
  State<FiltrScreen> createState() => _FiltrScreenState();
}

class _FiltrScreenState extends State<FiltrScreen> {
  List<ProductModel> products = [
    ProductModel(image: "assets/images/ayinda.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/ayflox.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/bifiform.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/ayflix.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
  ];
  @override
  Widget build(BuildContext context) {
    double start = 1000.0;
    double end = 1000000.0;
    int _value = 0;
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 76,
            child: Row(children: [
              IconButton(
                icon: Icon(CupertinoIcons.left_chevron,color: Colors.blue,),
                onPressed: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context){
                    return MenScreen();
                  }));
                },
              ),
              Container(
                width: 320,
                height: 76,
                child: Column(children: [
                  SizedBox(height: 5,),
                  Text("Filtr natijalari",style: GoogleFonts.aladin(
                    textStyle: Appstyle.eighteen(Colors.black),
                  ),),
                  Text("12 tovar",style: GoogleFonts.roboto(
                    textStyle: Appstyle.fourteen(Colors.grey),
                  ),),
                ],),
              )
            ],),
          ),
          SizedBox(height: 5,),
          SearchWidget(),
          SizedBox(height: 8,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 49,
            child: Row(children: [
              SizedBox(width: 10,),
              IconButton(onPressed: (){
                ShowBottomDialog.showBottomDialog(context);
              }, icon: Icon(Icons.line_style,color: Colors.blue,)),
              Text("Nomi bo'yicha",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              SizedBox(width: 40,),
              Container(width: 1,
                height: 40,
                color: Colors.grey,
              ),
              SizedBox(width: 60,),
              IconButton(onPressed: (){
                SecondShowBottomDialog.secondShowBottomDialog(context);
              }, icon: SvgPicture.asset("assets/icons/settings.svg")),
              Text("Filtr",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
            ],),
          ),
          SizedBox(width: 360,height: 590,
            child: ListView.builder(
              itemCount: products.length,
                scrollDirection: Axis.vertical,
              itemBuilder: (context,index){
                  return ProductWidget(images: products[index].image, text: products[index].text, letter: products[index].letter,
                      price: products[index].price, onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: DrugsScreen(),alignment: Alignment.bottomCenter));
                      });
              },
             ),
          ),
        ],
      ),
    );
  }
}
