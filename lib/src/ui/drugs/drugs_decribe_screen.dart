
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/model/second_product_model.dart';
import 'package:grandpharm/src/widget/button_widget/add_minus_wideget.dart';
import 'package:grandpharm/src/widget/product/second_product_widget.dart';

import '../../widget/textstyle/textstyle_widget.dart';

class DrugsDescribeScreen extends StatefulWidget {
  const DrugsDescribeScreen({Key? key}) : super(key: key);

  @override
  State<DrugsDescribeScreen> createState() => _DrugsDescribeScreenState();

}

class _DrugsDescribeScreenState extends State<DrugsDescribeScreen> {
  List<SecondProductModel> product = [
    SecondProductModel(image: "assets/images/ayflox.png", text: "АЙФЛОКС капли глазные 0,3% 5 мл", letter: "Aseptica, ООО", price: "129 000 сум"),
    SecondProductModel(image: "assets/images/ayinda.png", text: "АЙФЛОКС капли глазные 0,3% 5 мл", letter: "Aseptica, ООО", price: "99 000 сум"),
    SecondProductModel(image: "assets/images/ayflix.png", text: "АЙФЛОКС капли глазные 0,3% 5 мл", letter: "Aseptica, ООО", price: "99 000 сум"),
    SecondProductModel(image: "assets/images/bifiform.png", text: "АЙФЛОКС капли глазные 0,3% 5 мл", letter: "Aseptica, ООО", price: "99 000 сум"),
  ];
  @override
  bool _onPressed = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        SizedBox(height: 30,),
        Center(
          child: Container(
            width: 240,
            height: 240,
            child: Image.asset("assets/images/ayflox.png",fit: BoxFit.cover,),
          ),
        ),
        SizedBox(height: 24,),
        Row(children: [
          SizedBox(width: 15,),
          Text("Aseptica, ООО",style: Appstyle.twelve(Colors.blue),),
          Spacer(),
          IconButton(onPressed: (){
            setState(() {
              _onPressed = !_onPressed;
            });
          }, icon: Icon(Icons.favorite_border,color: _onPressed ? Colors.red : Colors.grey,size: 24,)),
        ],),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text("КардиоАктив омега капс. №30",style: Appstyle.twenty(Colors.black),),
        ),
        SizedBox(height: 24,),
        Row(children: [
          SizedBox(width: 15,),
          Text("27 000 сум",style: Appstyle.twentyfour(Colors.red),),
          SizedBox(width: 12,),
          Text("34 000 сум",style: Appstyle.sixteen(Colors.grey),),
        ],),
        SizedBox(height: 24,),
        Padding(
          padding: const EdgeInsets.only(left: 16,bottom: 5),
          child: Text("Дротаверин",style: Appstyle.sixteen(Colors.black),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text("Faol modda",style: Appstyle.thirteen(Colors.grey),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 16,bottom: 5),
          child: Text("Fransiya",style: Appstyle.sixteen(Colors.black),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text("Ishlab chiqaruvchi mamlakat",style: Appstyle.thirteen(Colors.grey),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text("Ushbu mahsulot uchun tavsiya etiladi",style: Appstyle.twenty(Colors.black),),
        ),
        SizedBox(width: 360,height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product.length,
              itemBuilder: (context,index){
                return SecondProductWidget(image: product[index].image, text:product[index].text, letter: product[index].letter, price: product[index].price);
              }
          ),
        ),
        SizedBox(height: 32,),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text("Alnaloglar",style: Appstyle.twenty(Colors.black),),
        ),
        SizedBox(height: 16,),
        SizedBox(width: 360,height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: product.length,
              itemBuilder: (context,index){
                return SecondProductWidget(image: product[index].image, text:product[index].text, letter: product[index].letter, price: product[index].price);
              }
          ),
        ),
        SizedBox(height: 24,),
        AddPlusWidget(),
        SizedBox(height: 15,),
      ],),),
    );
  }
}
