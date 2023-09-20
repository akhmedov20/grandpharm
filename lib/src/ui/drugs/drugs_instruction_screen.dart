import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/practice/practice.dart';

import '../../model/second_product_model.dart';
import '../../widget/product/second_product_widget.dart';
import '../../widget/textstyle/textstyle_widget.dart';

class DrugsInstructorScreen extends StatefulWidget {
  const DrugsInstructorScreen({Key? key}) : super(key: key);

  @override
  State<DrugsInstructorScreen> createState() => _DrugsInstructorScreenState();
}

class _DrugsInstructorScreenState extends State<DrugsInstructorScreen> {
  List<SecondProductModel> product = [
    SecondProductModel(image: "assets/images/ayflox.png", text: "АЙФЛОКС капли глазные 0,3% 5 мл", letter: "Aseptica, ООО", price: "129 000 сум"),
    SecondProductModel(image: "assets/images/ayinda.png", text: "АЙФЛОКС капли глазные 0,3% 5 мл", letter: "Aseptica, ООО", price: "99 000 сум"),
    SecondProductModel(image: "assets/images/ayflix.png", text: "АЙФЛОКС капли глазные 0,3% 5 мл", letter: "Aseptica, ООО", price: "99 000 сум"),
    SecondProductModel(image: "assets/images/bifiform.png", text: "АЙФЛОКС капли глазные 0,3% 5 мл", letter: "Aseptica, ООО", price: "99 000 сум"),
  ];
  bool _onTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
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
               _onTap = !_onTap;
              });
            }, icon: Icon(Icons.favorite_border,color: _onTap ? Colors.red : Colors.grey,size: 24,)),
          ],),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("КардиоАктив омега капс. №30",style: Appstyle.twenty(Colors.black),),
          ),
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("27 000 сум",style: Appstyle.twentyfour(Colors.red),),
          ),
          SizedBox(height: 24,),
          ExpansionTile(title: Text("Saqlash shartlari",style: Appstyle.thirteen(Colors.black),),
          children: [
           Padding(
             padding: const EdgeInsets.only(left: 12),
             child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
           ),
         ],),
          ExpansionTile(title: Text("Yaroqlilik muddati va ishlab chiqarish sanasi",style: Appstyle.thirteen(Colors.black),),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
              ),
            ],),
          ExpansionTile(title: Text("Farmakologik ta'sir",style: Appstyle.thirteen(Colors.black),),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
              ),
            ],),
          ExpansionTile(title: Text("Farmakokinetika",style: Appstyle.thirteen(Colors.black),),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
              ),
            ],),
          ExpansionTile(title: Text("Foydalanish uchun ko'rsatmalar",style: Appstyle.thirteen(Colors.black),),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
              ),
            ],),
          ExpansionTile(title: Text("Homiladorlik davrida p davrida qo'llash",style: Appstyle.thirteen(Colors.black),),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
              ),
            ],),
          ExpansionTile(title: Text("Maxsus ko'rsatmalar",style: Appstyle.thirteen(Colors.black),),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
              ),
            ],),
          ExpansionTile(title: Text("Ehtiyotkorlik bilan (Ehtiyot choralari)",style: Appstyle.thirteen(Colors.black),),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
              ),
            ],),
          ExpansionTile(title: Text("Qo'llash mumkin bo'lmagan holatlar",style: Appstyle.thirteen(Colors.black),),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
              ),
            ],),
          ExpansionTile(title: Text("Tarkibi",style: Appstyle.thirteen(Colors.black),),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text("Preparatni bolalar qo'li etmaydigan joyda saqlash kerak.25 C dan yuqori bo'lmagan haroratda joylashtiring."),
              ),
            ],),
          SizedBox(height: 16,),
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
          GestureDetector(onTap: (){},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue[700]
              ),
              child: Row(children: [
                SizedBox(width: 24,),
                Text("Korzinkaga",style: Appstyle.seventeen(Colors.white),),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text("27 000 so'm",style: Appstyle.seventeen(Colors.white),),
                ),
              ],),
            ),
          ),
          SizedBox(height: 16,),
        ],),
      ),
    );
  }
}
