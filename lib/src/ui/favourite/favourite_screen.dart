import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/model/product_model.dart';
import 'package:grandpharm/src/widget/product/product_widget.dart';
import 'package:grandpharm/src/widget/tovar/tovar_widget.dart';

import '../../widget/textstyle/textstyle_widget.dart';

class FavouritePage extends StatelessWidget {
   FavouritePage({Key? key}) : super(key: key);

  @override
  List <ProductModel> date = [
  ProductModel(image: "assets/images/bifiform.png", text:"АЙФЛОКС каплиглазные 0,3% 5 мл №30 блистер",
      letter: "Эвалар", price: "39 000 so'm"),
    ProductModel(image: "assets/images/ayflix.png", text:"АЙФЛОКС каплиглазные 0,3% 5 мл №30 блистер",
        letter: "Эвалар", price: "49 000 so'm"),
    ProductModel(image: "assets/images/ayflox.png", text:"Доритрицин таб.д/рассасывания 10",
        letter: "Эвалар", price: "59 000 so'm"),
    ProductModel(image: "assets/images/ayinda.png", text:"Бифиформ капс. №30",
        letter: "Эвалар", price: "69 000 so'm"),
    ProductModel(image: "assets/images/doritsin.png", text:"АЙФЛОКС каплиглазные 0,3% 5 мл №30 блистер",
        letter: "Эвалар", price: "39 000 so'm"),

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30,),
          Container(
            width: 375,
            height: 74,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))
            ),
            child: Column(
              children: [
              SizedBox(height: 5,),
              Center(
                child: Text("Sevimlilar",style: GoogleFonts.aladin(
                  textStyle: Appstyle.eighteen(Colors.black),
                ),),
              ),SizedBox(height: 5,),
              Center(
                child: Text("146 tovar",style: GoogleFonts.roboto(
                  textStyle: Appstyle.fourteen(Colors.grey),
                ),),
              ),
            ],),
          ),
          SizedBox(height: 8,),
          SizedBox(width: 475,
            height: 650,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: date.length,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ProductWidget(images: date[index].image, text: date[index].text,
                        letter: date[index].letter, price: date[index].price, onTap: () {},),
                  );
                }),
          )
        ],
      ),
    );
  }
}
