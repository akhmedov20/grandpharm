import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/korzina/order/courier/dotavka%20courier/dostavka_courier.dart';
import 'package:grandpharm/src/widget/appbar/appbar_widget.dart';
import 'package:grandpharm/src/widget/button_widget/button_second_widget.dart';
import 'package:grandpharm/src/widget/button_widget/button_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../widget/textstyle/textstyle_widget.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
         SizedBox(height: 30,),
         AppbarWidget(write: "Zakaz №00029323", writing: "26 Iyundan", onTap: (){
           Navigator.pop(context, PageTransition(type: PageTransitionType.fade,child: DostavkaCourier(),alignment: Alignment.bottomCenter));
         }),
         Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Text("Qabul qiluvchi",style: Appstyle.twenty(Colors.black),),
         ),
         SizedBox(height: 22,),
         Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Text("Aziza Umarova",style: Appstyle.sixteen(Colors.black),),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Text("Ismi",style: Appstyle.thirteen(Colors.grey),),
         ),
         SizedBox(height: 16,),
         Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Text("+998 77 777 77 77",style: Appstyle.sixteen(Colors.black),),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Text("Telefon raqami",style: Appstyle.thirteen(Colors.grey),),
         ),
         SizedBox(height: 24,),
         Row(children: [
           SizedBox(width: 16,),Text("To'lov",style: Appstyle.twenty(Colors.black),),
           Spacer(),
           IconButton(onPressed: (){}, icon: Icon(Icons.check_circle,color: Colors.green,size: 16,)),
           Padding(
             padding: const EdgeInsets.only(right: 10),
             child: Text("To'landi",style: Appstyle.twenty(Colors.black),),
           ),
         ],),
         SizedBox(height: 10,),
         Row(children: [
           SizedBox(width: 15,),
           Text("Tovarlarni soni,donasi",style: Appstyle.thirteen(Colors.grey),),
           Spacer(),
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Text("3",style: Appstyle.thirteen(Colors.grey),),
           ),
         ],),
         SizedBox(height: 15,),
         Row(children: [
           SizedBox(width: 15,),
           Text("Tovarlar narxi",style: Appstyle.thirteen(Colors.grey),),
           Spacer(),
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Text("50 000 so'm",style: Appstyle.thirteen(Colors.grey),),
           ),
         ],),
         SizedBox(height: 15,),
         Row(children: [
           SizedBox(width: 15,),
           Text("Dostavka",style: Appstyle.thirteen(Colors.grey),),
           Spacer(),
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Text("0 so'm",style: Appstyle.twelve(Colors.grey),),
           ),
         ],),
         SizedBox(height: 25,),
         Row(children: [
           SizedBox(width: 15,),
           Text("Jami",style: Appstyle.sixteen(Colors.black),),
           Spacer(),
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Text("50 000 so'm",style: Appstyle.sixteen(Colors.black),),
           ),
         ],),
         SizedBox(height: 24,),
         Container(
           margin: EdgeInsets.only(left: 10),
           width: 373,
           height: 311,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.white,
               boxShadow: [
                 BoxShadow(
                     blurRadius: 1
                 )
               ]
           ),
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 18,),
               Row(children: [
                 SizedBox(width: 30,),Text("Kuryer",style: Appstyle.twenty(Colors.black),),
                 Spacer(),
                 ButtonSecondWidget(text: "Ochdi", height: 22, circle: 5, horizontal: 15, width: 63, onTap: (){}, vertical: 0, fontsize: 11, color: Colors.blue,)
               ],),
               SizedBox(height: 15,),
               Padding(
                 padding: const EdgeInsets.only(left: 30),
                 child: Text("Apteka adresi",style: Appstyle.fifteen(Colors.black),),
               ),
               SizedBox(height: 10,),
               Container(
                 padding: EdgeInsets.only(left: 30),
                 width: 230,
                 height: 40,
                 child: Text("Ташкент, ул.Ахмад Даниш, 24 Bugun, 08:00 - 22:00",style: Appstyle.thirteen(Colors.black),),
               ),
               SizedBox(height: 15,),
               Container(
                 margin: EdgeInsets.symmetric(horizontal: 15),
                 width: MediaQuery.of(context).size.width,
                 height: 1,
                 color: Colors.grey[300],
               ),
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 75,
                 child: Row(children: [
                   SizedBox(width: 16,),Container(width: 56,height: 56,child: Image.asset("assets/images/ayflox.png"),),SizedBox(width: 12,),
                   Container(width: 220,height: 75,child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                     SizedBox(height: 10,),
                     Container(width: 218,height: 32,child:Text("АЙФЛОКС каплиглазные 0,3% 5 мл №30 блистер",style: TextStyle(
                         fontSize: 11
                     ),)
                       ,),
                     Row(children: [
                       Text("39 000 сум",style: Appstyle.fifteen(Colors.black),),
                       SizedBox(width: 5,),
                       Text("х 2",style: Appstyle.fourteen(Colors.grey),),
                     ],)
                   ],),)
                 ],),
               ),
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 75,
                 child: Row(children: [
                   SizedBox(width: 16,),Container(width: 56,height: 56,child: Image.asset("assets/images/ayinda.png"),),SizedBox(width: 12,),
                   Container(width: 220,height: 75,child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                     SizedBox(height: 10,),
                     Container(width: 218,height: 32,child:Text("АЙФЛОКС каплиглазные 0,3% 5 мл №30 блистер",style: TextStyle(
                         fontSize: 11
                     ),)
                       ,),
                     Row(children: [
                       Text("39 000 сум",style: Appstyle.fifteen(Colors.black),),
                       SizedBox(width: 5,),
                       Text("х 2",style: Appstyle.fourteen(Colors.grey),),
                     ],)
                   ],),)
                 ],),
               ),
             ],),
         )

       ],),
     )
    );
  }
}
