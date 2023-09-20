import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/ui/menu2/data_screen.dart';
import 'package:grandpharm/src/ui/menu2/favourite%20pharmacy/favourite_pharmacy_page.dart';
import 'package:grandpharm/src/ui/menu2/language/language_screen.dart';
import 'package:grandpharm/src/ui/menu2/zakaz/zakaz_history_screen.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';
import 'package:page_transition/page_transition.dart';

import 'card/card_screen.dart';
import 'city_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Stack(children: [
            SizedBox(width: 375,height: 180,
                child: Image.asset("assets/images/container.png",fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 30),
              child: Text("2 270",style: Appstyle.twentyfour(Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 65),
              child: Text("Mening balansim",style: Appstyle.twelve(Colors.white),),
            ),
          ],),
          SizedBox(height: 30,),
          GestureDetector(onTap: (){},
            child: ListTile(
              title: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 110),
                  child: Text("Фахриддин Олимов",style: GoogleFonts.roboto(
                      textStyle: Appstyle.eighteen(Colors.black)
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 135),
                  child: Text("Mening ma'lumotlarim",style: GoogleFonts.roboto(
                      textStyle: Appstyle.fourteen(Colors.grey)
                  ),),
                ),
              ],),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DataScreen();
                }));
              },
              icon: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),),
            ),
          ),
          SizedBox(height: 20,),
          GestureDetector(onTap: (){},
            child: ListTile(
              leading: Icon(CupertinoIcons.gift,color: Colors.blue,),
              title: Text("Bonus kartasi",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){
            Navigator.push(context, PageTransition(type: PageTransitionType.scale,child: CityScreen(),alignment: Alignment.center));
          },
            child: ListTile(
              leading: Icon(Icons.location_on_outlined,color: Colors.blue,),
              title: Row(children: [
                Text("Shahar",style: GoogleFonts.roboto(
                    textStyle: Appstyle.sixteen(Colors.black)
                ),),SizedBox(width: 156,),
                Text("Toshkent",style: GoogleFonts.roboto(
                    textStyle: Appstyle.fourteen(Colors.grey)
                ),),
              ],),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return FavouritePharmacyPage();
            }));
          },
            child: ListTile(
              leading: Icon(CupertinoIcons.plus_app,color: Colors.blue,),
              title: Text("Sevimli aptekalar",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return CardScreen();
            }));
          },
            child: ListTile(
              leading: Icon(CupertinoIcons.creditcard,color: Colors.blue,),
              title: Text("Plastik kartalar",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ZakazHistoryScreen();
            }));
          },
            child: ListTile(
              leading: Icon(Icons.shopping_bag_outlined,color: Colors.blue,),
              title: Text("Zakazlar tarixi",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return LanguageScreen();
            }));
          },
            child: ListTile(
              leading: Icon(CupertinoIcons.globe,color: Colors.blue,),
              title: Row(children: [
                Text("Til",style: GoogleFonts.roboto(
                    textStyle: Appstyle.sixteen(Colors.black)
                ),),SizedBox(width: 183,),
                Text("O'zbekcha",style: GoogleFonts.roboto(
                    textStyle: Appstyle.fourteen(Colors.grey)
                ),),
              ],),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){},
            child: ListTile(
              leading: Icon(Icons.error_outline,color: Colors.blue,),
              title: Text("Ilova haqida",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
        ],
      ),
    );
  }
}
