import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/widget/appbar/appbar_widget.dart';

import '../../../widget/textstyle/textstyle_widget.dart';
import '../profile_screen.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool _press = false;
  int _valu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        SizedBox(height: 30,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 76,
          child: Row(children: [
            IconButton(
              icon: Icon(CupertinoIcons.left_chevron,color: Colors.blue,),
              onPressed: (){Navigator.pop(context, MaterialPageRoute(builder: (context){
                return ProfileScreen();
              }));},
            ),
            Container(
              width: 320,
              height: 76,
              child: Row(children: [
                SizedBox(width: 125,),
                Text("Tillar",style: GoogleFonts.aladin(
                  textStyle: Appstyle.twenty(Colors.black),
                ),),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("saqlash",style: GoogleFonts.roboto(
                  textStyle: Appstyle.fourteen(Colors.blue),
                ),),)
              ],),
            )
          ],),
        ),
        ListTile(
          title: Text("O'zbekcha",style: Appstyle.fifteen(Colors.black),),
          trailing: IconButton(onPressed: (){
            setState(() {
              _press = !_press;
            });
          },icon: Icon(_press? Icons.check : null,color: Colors.blue,),),
        ),
        ListTile(
          title: Text("Русский",style: Appstyle.fifteen(Colors.black),),
          trailing: IconButton(onPressed: (){
            setState(() {
              _press = !_press;
            });
          },icon: Icon(_press? Icons.check : null,color: Colors.blue,),),
        ),
        ListTile(
          title: Text("English",style: Appstyle.fifteen(Colors.black),),
          trailing: IconButton(onPressed: (){
            setState(() {
              _press = !_press;
            });
          },icon: Icon(_press? Icons.check : null,color: Colors.blue,),),
        ),
        SizedBox(height: 50,),
        ListTile(
          title: Text("O'zbekcha",style: Appstyle.fifteen(Colors.black),),
          trailing:  Radio(
              value: 1,
              groupValue: _valu,
              onChanged: (valu){
                setState(() {
                  _valu = valu!;
                });
              }),
        ),
        ListTile(
          title: Text("Русский",style: Appstyle.fifteen(Colors.black),),
          trailing:  Radio(
              value: 2,
              groupValue: _valu,
              onChanged: (valu){
                setState(() {
                  _valu = valu!;
                });
              }),
        ),
        ListTile(
          title: Text("English",style: Appstyle.fifteen(Colors.black),),
          trailing:  Radio(
              value: 3,
              groupValue: _valu,
              onChanged: (valu){
                setState(() {
                  _valu = valu!;
                });
              }),
        ),
      ],),
    );
  }
}
