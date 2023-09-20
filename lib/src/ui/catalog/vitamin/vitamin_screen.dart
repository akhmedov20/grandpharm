import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/dialog/bottom-dialog/search_dialog.dart';
import 'package:grandpharm/src/ui/catalog/catalog_screen.dart';
import 'package:grandpharm/src/ui/catalog/for%20men/for_men_screen.dart';
import 'package:grandpharm/src/ui/korzina/korzina_screen.dart';
import 'package:grandpharm/src/widget/appbar/appbar_widget.dart';
import 'package:grandpharm/src/widget/search/search_widget.dart';

import '../../../widget/textstyle/textstyle_widget.dart';

class VitaminScreen extends StatefulWidget {
  const VitaminScreen({Key? key}) : super(key: key);

  @override
  State<VitaminScreen> createState() => _VitaminScreenState();
}

class _VitaminScreenState extends State<VitaminScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 30,),
          AppbarWidget(write: "Витамины и БАДы", writing: "", onTap: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context){
              return CatalogScreen();
            }));
          },),
         SearchWidget(),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){},
            child: ListTile(
              title: Text("Monovitaminlar",style: GoogleFonts.roboto(
                textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){},
            child: ListTile(
              title: Text("Multivitaminlar",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){},
            child: ListTile(
              title: Text("Xomilador va emizuvchilar uchun",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return MenScreen();
          }));
          },
            child: ListTile(
              title: Text("Erkaklar uchun",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){},
            child: ListTile(
              title: Text("Bolalar uchun ",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){},
            child: ListTile(
              title: Text("Ayollar uchun",style: GoogleFonts.roboto(
                  textStyle: Appstyle.sixteen(Colors.black)
              ),),
              trailing: Icon(CupertinoIcons.right_chevron,color: Colors.grey,),
            ),
          ),
          GestureDetector(onTap: (){},
            child: ListTile(
              title: Text("Saxiri borlar uchun",style: GoogleFonts.roboto(
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
