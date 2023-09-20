import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/korzina/order/courier/dotavka%20courier/dostavka_courier.dart';
import 'package:grandpharm/src/widget/button_widget/button_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../widget/textstyle/textstyle_widget.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    TextEditingController controller3 = TextEditingController();
    TextEditingController controller4 = TextEditingController();
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35,),
            Center(child: Text("Yangi dostavka adresi",style: Appstyle.eighteen(Colors.black),),),
            SizedBox(height: 25,),
            GestureDetector(onTap: (){},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.blue)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text("Lokatsiyani jo'nating",style: Appstyle.seventeen(Colors.blue),)
                ],),
              ),
            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              height: 52,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],

              ),
              child: Row(children: [
                SizedBox(width: 20,),
                Expanded(child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Kvartira/ofis",
                      hintStyle: Appstyle.sixteen(Colors.grey)
                  ),
                ),)
              ],)
            ),
            SizedBox(height: 12,),
            Row(children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: 164,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],

                  ),
                  child: Row(children: [
                    SizedBox(width: 20,),
                    Expanded(child: TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Podyezd",
                          hintStyle: Appstyle.sixteen(Colors.grey)
                      ),
                    ),)
                  ],)
              ),
              SizedBox(width: 4,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width:  164,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],

                  ),
                  child: Row(children: [
                    SizedBox(width: 20,),
                    Expanded(child: TextField(
                      controller: controller3,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Qavat",
                          hintStyle: Appstyle.sixteen(Colors.grey)
                      ),
                    ),)
                  ],)
              ),
            ],),
            SizedBox(height: 12,),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],

                ),
                child: Row(children: [
                  SizedBox(width: 20,),
                  Expanded(child: TextField(
                    controller: controller4,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Kommentariy",
                        hintStyle: Appstyle.sixteen(Colors.grey)
                    ),
                  ),)
                ],)
            ),
            SizedBox(height: 12,),
            Spacer(),
            ButtonWidget(text: "Shu yerga yetkazish", height: 44, circle: 10,
                horizontal: 15, width: MediaQuery.of(context).size.width, onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: DostavkaCourier(),alignment: Alignment.bottomCenter));
                }, vertical: 40,),
          ],
        ),
    );
  }
}
