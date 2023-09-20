import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/ui/menu/home/home_screen.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../../dialog/bottom-dialog/filter_dialog.dart';
import '../../dialog/bottom-dialog/filtr_dialog.dart';
import '../../dialog/bottom-dialog/search_dialog.dart';
import '../../model/product_model.dart';
import '../../widget/product/product_widget.dart';
import '../drugs/drugs_screen.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  List<ProductModel> products = [
    ProductModel(image: "assets/images/ayinda.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/ayflox.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/bifiform.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/ayflix.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/ayinda.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/ayflox.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/bifiform.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
    ProductModel(image: "assets/images/ayflix.png", text: "АЙФЛОКС каплиглазные 0,3%5 мл №30 блистер", letter: "Эвалар", price: "39 000 сум"),
  ];
  @override
  Widget build(BuildContext context) {
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
                    return HomeScreen();
                  }));
                },
              ),
              Container(
                width: 320,
                height: 76,
                child: Column(children: [
                  SizedBox(height: 5,),
                  Text("Eng zo'r takliflar",style: GoogleFonts.aladin(
                    textStyle: Appstyle.eighteen(Colors.black),
                  ),),
                  Text("146 tovar",style: GoogleFonts.roboto(
                    textStyle: Appstyle.fourteen(Colors.grey),
                  ),),
                ],),
              )
            ],),
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 300,
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
                child: Row(
                  children: [
                    SizedBox(width: 15,),
                    Icon(Icons.search,color: Colors.grey,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Dori istash",
                          hintStyle: Appstyle.fourteen(Colors.grey),
                        ),
                      ),
                    ),
                    IconButton(onPressed: (){
                      ThirdShowBottomDialog.thirdShowBottomDialog(context);
                    }, icon: Icon(
                      Icons.keyboard_voice,color: Colors.grey,size: 30,
                    ))
                  ],
                ),
              ),
              SizedBox(width: 25,),
              IconButton(onPressed: (){}, icon: Icon(
                Icons.print,color: Colors.blue,size: 30,
              ))
            ],
          ),
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
