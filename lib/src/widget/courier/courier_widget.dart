import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../ui/korzina/order/courier/courier_detail_screen.dart';
import '../textstyle/textstyle_widget.dart';

class CourierWidget extends StatelessWidget {
  const CourierWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 16),
      width: 344,
      height: 220,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 1
            )
          ]
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text("Kuryer bilan",style: Appstyle.eighteen(Colors.black),),
          ),
          SizedBox(height: 5,),
          Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
            SizedBox(width: 16,),
            Text("3",style: Appstyle.twelve(Colors.grey),),
            SizedBox(width: 5,),
            Text("tovar",style: Appstyle.twelve(Colors.grey),),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text("Tahrirlash",style: Appstyle.twelve(Colors.blue),),
            ),
          ],),
          Row(children: [
            SizedBox(width: 10,),
            Container(
              width: 80,
              height: 90,
              child: Column(children: [
                Container(width: 16,height: 16,margin: EdgeInsets.only(left: 50,top: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16)
                  ),child: Center(child: Text("x3",style: Appstyle.eleven(Colors.white),),),
                ),
                SizedBox(height: 66,width: 66,
                    child: Image.asset('assets/images/ayflox.png',fit: BoxFit.cover,))
              ],),
            ),
            Container(
              width: 80,
              height: 90,
              child: Column(children: [
                Container(width: 16,height: 16,margin: EdgeInsets.only(left: 50,top: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16)
                  ),child: Center(child: Text("x2",style: Appstyle.eleven(Colors.white),),),
                ),
                SizedBox(height: 66,width: 66,
                    child: Image.asset('assets/images/bifiform.png',fit: BoxFit.cover,))
              ],),
            ),
          ],),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child:  GestureDetector(onTap: (){
              Navigator.push(context, PageTransition(type: PageTransitionType.scale,
                  alignment: Alignment.bottomCenter, child: CourierDetailScreen()));

            },
              child: Container(
                width: 194,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.blue)
                ),child: Center(child: Text("Manzil va vaqtni o'zgartiring",style: Appstyle.twelve(Colors.blue),),),
              ),
            ),
          )
        ],),
    );
  }
}
