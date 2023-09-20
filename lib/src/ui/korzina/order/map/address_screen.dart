import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandpharm/src/widget/button_widget/button_widget.dart';
import 'package:grandpharm/src/widget/textfield/texfield_third_widget.dart';
import 'package:grandpharm/src/widget/textfield/textfield_two_widget.dart';

import '../../../../widget/textstyle/textstyle_widget.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35,),
          Row(
            children: [
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.left_chevron,color: Colors.blue,)),
            SizedBox(width: 56,),
            Text("Yangi dostavka manzili",style: Appstyle.eighteen(Colors.black),),
          ],),
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SecondTextField(width: 363, height: 52, text: "Ko'cha,mahalla",
                letter: "Yunusobod, Amir Temur,45", icons: Icons.location_on,),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ThirdTextField(width: 363, height: 52, text: "Kvartira/ofis", letter: "",),
          ),
          SizedBox(height: 12,),
          Row(children: [
            SizedBox(width: 16,),
            ThirdTextField(width: 164, height: 52, text: "Podyezd", letter: "",),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ThirdTextField(width: 164, height: 52, text: "Dom", letter: "",),
            ),
          ],),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ThirdTextField(width: 363, height: 52, text: "Kommentariy", letter: "",),
          ),
          Spacer(),
          ButtonWidget(text: "Shu yerga keltirish", height: 44, circle: 10, horizontal: 15, width: MediaQuery.of(context).size.width,
              onTap: (){
              }, vertical: 40)
        ],
      ),
    );
  }
}
