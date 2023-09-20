import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grandpharm/src/ui/menu2/card/add_card_screen.dart';
import 'package:grandpharm/src/widget/appbar/appbar_widget.dart';

import '../../../widget/textstyle/textstyle_widget.dart';
import '../profile_screen.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
        SizedBox(height: 30,),
        AppbarWidget(write: "Plastik kartalar", writing: "", onTap: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context){
            return ProfileScreen();
          }));
        }),
        SizedBox(height: 200,),
        Container(
          width: 152,
          height: 152,
          child: SizedBox(width: 109,height: 109,
              child: Stack(children: [
                SvgPicture.asset("assets/icons/pppp.svg",fit: BoxFit.cover,),
                Padding(
                  padding: const EdgeInsets.only(left: 50,top: 50),
                  child: SvgPicture.asset("assets/icons/payment.svg",fit: BoxFit.cover,),
                )
              ],)),
        ),
        SizedBox(height: 24,),
        Text("Siz hali karta qo'shmagansiz",style: Appstyle.twenty(Colors.black),),
        Text("Buyurtmalarni to'lash uchun kartani qo'shing",style: Appstyle.fifteen(Colors.grey),),
        SizedBox(height: 24,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AddCardScreen();
            }));
          },
          child: Container(
            width: 136,
            height: 36,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(5)
            ),child: Center(child: Text("Karta qo'shing",style: TextStyle(color: Colors.blue,fontSize: 15),)),
          ),
        )
      ],),
    );
  }
}
