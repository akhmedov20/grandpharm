import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/korzina/order/courier/delivery_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../widget/textstyle/textstyle_widget.dart';

class CourierDetailScreen extends StatefulWidget {
  const CourierDetailScreen({Key? key}) : super(key: key);

  @override
  State<CourierDetailScreen> createState() => _CourierDetailScreenState();
}

class _CourierDetailScreenState extends State<CourierDetailScreen> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: 35,),
         Center(child: Text("Kuryer dotavkasi",style: Appstyle.eighteen(Colors.black),),),
         SizedBox(height: 25,),
         Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Text("Dostavka Adresi",style: Appstyle.twenty(Colors.black),),
         ),
         Row(children: [
           IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.plus_circled,color: Colors.blue,size: 24,)),
           TextButton(onPressed: (){
             Navigator.push(context, PageTransition(type: PageTransitionType.scale,alignment: Alignment.bottomCenter,child: DeliveryScreen()));
           }, child: Text("Yangi adres qo'shing",style: Appstyle.fifteen(Colors.blue),))
         ],),
         SizedBox(height: 24,),
         Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Text("Dostavka vaqti",style: Appstyle.twenty(Colors.black),),
         ),
         SizedBox(height: 30,),
         Row(children: [
           Radio(
               value: 1,
               groupValue: _value,
               onChanged: (value){
                 setState(() {
                   _value = value!;
                 });
               }),
           Text("1 soat davomida 1km = 2 000 so'm",style: Appstyle.fifteen(Colors.black),)
         ],),
         Row(children: [
           Radio(
               value: 2,
               groupValue: _value,
               onChanged: (value){
                 setState(() {
                   _value = value!;
                 });
               }),
           Text('24 soat ichida bepul',style: Appstyle.fifteen(Colors.black),)
         ],),
         Spacer(),
         GestureDetector(onTap: (){
           Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: DeliveryScreen(),alignment: Alignment.bottomCenter));

         },
           child: Container(
             margin: EdgeInsets.symmetric(horizontal: 15,vertical: 40),
             width: MediaQuery.of(context).size.width,
             height: 44,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.blue[700]
             ),
             child: Center(child: Text("Keyinchalik",style: Appstyle.seventeen(Colors.white),),),
           ),
         )
       ],
     ),
    );
  }
}
