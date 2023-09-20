import 'package:flutter/material.dart';
import 'package:grandpharm/src/ui/menu2/profile_screen.dart';
import 'package:grandpharm/src/widget/appbar/appbar_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class FavouritePharmacyPage extends StatelessWidget {
  const FavouritePharmacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          AppbarWidget(write: "Sevimli aptekalar", writing: "", onTap: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context){
              return ProfileScreen();
            }));
          },),
          SizedBox(height: 16,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: 371,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1
                )
              ]
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 14,),
                Text("АЛМАЗАРСКИЙ РАЙОН, УЛ.ЗИЁ, ДОМ 12",style: Appstyle.thirteen(Colors.black),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
              ],),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text("Adres",style: Appstyle.twelve(Colors.grey),),
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 14,),
                Text("08:00 - 22:00",style: Appstyle.thirteen(Colors.black),),
                SizedBox(width: 64,),
                Text("+998 99 004 84 82",style: Appstyle.thirteen(Colors.black),),
              ],),
              SizedBox(height: 5,),
              Row(children: [
                SizedBox(width: 14,),
                Text("Режим работы",style: Appstyle.eleven(Colors.grey),),
                SizedBox(width: 64,),
                Text("Телефон",style: Appstyle.eleven(Colors.grey),),
              ],),
            ],),
          ),
          SizedBox(height: 16,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: 371,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1
                  )
                ]
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 14,),
                Text("АЛМАЗАРСКИЙ РАЙОН, УЛ.ЗИЁ, ДОМ 12",style: Appstyle.thirteen(Colors.black),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
              ],),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text("Adres",style: Appstyle.twelve(Colors.grey),),
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 14,),
                Text("08:00 - 22:00",style: Appstyle.thirteen(Colors.black),),
                SizedBox(width: 64,),
                Text("+998 99 004 84 82",style: Appstyle.thirteen(Colors.black),),
              ],),
              SizedBox(height: 5,),
              Row(children: [
                SizedBox(width: 14,),
                Text("Режим работы",style: Appstyle.eleven(Colors.grey),),
                SizedBox(width: 64,),
                Text("Телефон",style: Appstyle.eleven(Colors.grey),),
              ],),
            ],),
          ),
          SizedBox(height: 16,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: 371,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1
                  )
                ]
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 14,),
                Text("АЛМАЗАРСКИЙ РАЙОН, УЛ.ЗИЁ, ДОМ 12",style: Appstyle.thirteen(Colors.black),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
              ],),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Text("Adres",style: Appstyle.twelve(Colors.grey),),
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 14,),
                Text("08:00 - 22:00",style: Appstyle.thirteen(Colors.black),),
                SizedBox(width: 64,),
                Text("+998 99 004 84 82",style: Appstyle.thirteen(Colors.black),),
              ],),
              SizedBox(height: 5,),
              Row(children: [
                SizedBox(width: 14,),
                Text("Режим работы",style: Appstyle.eleven(Colors.grey),),
                SizedBox(width: 64,),
                Text("Телефон",style: Appstyle.eleven(Colors.grey),),
              ],),
            ],),
          ),
        ],
      ),
    );
  }
}
