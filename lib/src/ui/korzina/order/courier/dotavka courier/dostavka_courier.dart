import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/dialog/center-dialog/order_dialog.dart';
import 'package:grandpharm/src/widget/button_widget/button_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../widget/textstyle/textstyle_widget.dart';
import '../delivery_screen.dart';
import 'decor_order_screen.dart';

class DostavkaCourier extends StatefulWidget {
  const DostavkaCourier({Key? key}) : super(key: key);

  @override
  State<DostavkaCourier> createState() => _DostavkaCourierState();
}

class _DostavkaCourierState extends State<DostavkaCourier> {
  int _cos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        SizedBox(height: 35,),
        Center(child: Text("Kuryer dotavkasi",style: Appstyle.eighteen(Colors.black),),),
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text("Dostavka Adresi",style: Appstyle.twenty(Colors.black),),
        ),
        SizedBox(height: 12,),
        Row(children: [
          Radio(
              value: 1,
              groupValue: _cos,
              onChanged: (cos){
                setState(() {
                  _cos = cos!;
                });
              }),
          SizedBox(width: 10,),
          Container(
            width: 310,
            height: 44,
            child:Text("Ташкент, ул.Ахмад Даниш, 24, кв. 48,эт. 3, подъезд 2",style: Appstyle.fifteen(Colors.black),),
          )
        ],),
        Row(children: [
          Radio(
              value: 2,
              groupValue: _cos,
              onChanged: (cos){
                setState(() {
                  _cos = cos!;
                });
              }),
          SizedBox(width: 10,),
          Container(
            width: 310,
            height: 44,
            child:Text("Ташкент, ул.Ахмад Даниш, 24, кв. 48,эт. 1, подъезд 1",style: Appstyle.fifteen(Colors.black),),
          )
        ],),
        SizedBox(height: 26,),
        Row(children: [
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.plus_circled,color: Colors.blue,size: 24,)),
          TextButton(onPressed: (){
            Navigator.push(context, PageTransition(type: PageTransitionType.scale,alignment: Alignment.bottomCenter,child: DeliveryScreen()));
          }, child: Text("Yangi adres qo'shing",style: Appstyle.fifteen(Colors.blue),))
        ],),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text("Dostavka vaqti",style: Appstyle.twenty(Colors.black),),
        ),
        SizedBox(height: 30,),
        Row(children: [
          Radio(
              value: 3,
              groupValue: _cos,
              onChanged: (cos){
                setState(() {
                  _cos = cos!;
                });
              }),
          Text("1 soat davomida 1km = 2 000 so'm",style: Appstyle.fifteen(Colors.black),)
        ],),
        Row(children: [
          Radio(
              value: 4,
              groupValue: _cos,
              onChanged: (cos){
                setState(() {
                  _cos = cos!;
                });
              }),
          Text('24 soat ichida bepul',style: Appstyle.fifteen(Colors.black),)
        ],),
        Spacer(),
        ButtonWidget(text: "To'lash", height: 44, circle: 10, horizontal: 20, width: MediaQuery.of(context).size.width, onTap: (){
          OrderDialog.orderDialog(context);
        }, vertical: 30)
      ],),
    );
  }
}
