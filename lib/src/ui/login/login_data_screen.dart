import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/widget/textfield/textfield_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

import '../menu/bottomnavigator/main_screen.dart';
import '../menu/home/home_screen.dart';

class LoginDataScreen extends StatefulWidget {
  const LoginDataScreen({Key? key}) : super(key: key);

  @override
  State<LoginDataScreen> createState() => _LoginDataScreenState();
}

class _LoginDataScreenState extends State<LoginDataScreen> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 40,),
          Center(child: Text("Sizni ma'lumotlaringiz",style: Appstyle.sixteen(Colors.black),),),
          SizedBox(height: 15,),
          TextFieldWidget(text: "Ism",),
          SizedBox(height: 10,),
          TextFieldWidget(text: "Familiya",),
          SizedBox(height: 10,),
          TextFieldWidget(text: "Tug'ilgan sanangiz",),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 15,),
            Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = value!;
                  });
                }),
            Text("Erkak",style: Appstyle.twentyfour(Colors.black),),
            SizedBox(width: 130,),
            Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value){
                  setState(() {
                    _value = value!;
                  });
                }),
            Text("Ayol",style: Appstyle.twentyfour(Colors.black),),
          ],),
          SizedBox(height: 370,),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MainScreen();
                }));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 68,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[700],
                ),
                child: Center(
                    child: Text("Saqlash",style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    )),
              ))
        ],
      ),
    );
  }
}
