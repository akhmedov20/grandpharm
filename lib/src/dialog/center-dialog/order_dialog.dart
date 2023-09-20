import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/widget/button_widget/button_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../../ui/korzina/order/courier/dotavka courier/decor_order_screen.dart';
import '../../widget/textstyle/textstyle_widget.dart';

class OrderDialog{
  static void orderDialog(BuildContext context){
    showModalBottomSheet(
      isDismissible: true,
      context: context,
      builder: (BuildContext context){
        return StatefulBuilder(builder: (ctx, setState){
          return Container(
            width: 375,
            height: 419,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Container(
                  width: 152,
                  height: 152,
                  child: SizedBox(width: 109,height: 109,
                      child: Stack(children: [
                        Image.asset("assets/images/chekcbox.png",fit: BoxFit.cover,),
                        Padding(
                          padding: const EdgeInsets.only(left: 50,top: 50),
                          child: Image.asset("assets/images/checkcircle.png",fit: BoxFit.cover,),
                        )
                      ],)),
                ),
                Center(child: Text("Buyurtmangiz joylashtirildi",
                  style: GoogleFonts.roboto(
                      textStyle: Appstyle.eighteen(Colors.black)
                  ),),),
                SizedBox(height: 10,),
                SizedBox(
                  width: 270,
                  child: Text("Buyurtma holatini o'zgartirishingiz mumkin profilingizda kuzatib boring",textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        textStyle: Appstyle.fourteen(Colors.grey)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: OrderDetailScreen(),alignment: Alignment.bottomCenter));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1,color: Colors.blue),
                        borderRadius: BorderRadius.circular(10)
                    ),child: Center(child: Text("Buyurtma tafsilotlarini ko'rish",style: Appstyle.seventeen(Colors.blue),)),
                  ),
                ),
                ButtonWidget(text: "Yopish", height: 44, circle: 10, horizontal: 15, width: MediaQuery.of(context).size.width, onTap: (){
                 Navigator.pop(context);
                }, vertical: 0)
              ],
            ),
          );
        });
      }
    );
  }
}