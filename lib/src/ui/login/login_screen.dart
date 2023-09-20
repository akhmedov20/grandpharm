import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/ui/login/login_check_screen.dart';
import 'package:grandpharm/src/widget/textfield/textfield_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
         SizedBox(height: 100,),
          Center(child: SvgPicture.asset("assets/icons/logo.svg",width: 72,height: 68,)),
          SizedBox(height: 22,),
          Text("GRANDFARM",style: GoogleFonts.aladin(
            textStyle: TextStyle(
              letterSpacing: 8,
              color: Colors.blue,
              fontSize: 30
            ),)
          ),
          SizedBox(height: 8,),
          Center(child: Text(
            "Apteka tarmog'i",style: Appstyle.twelve(Colors.grey),
          ),),
          SizedBox(height: 20,),
          TextFieldWidget(text: 'Telefon raqami',),
          Spacer(),
          Center(
            child: Text("Davom etish orqali siz qayta ishlash siyosatiga rozilik bildirasiz",
              textAlign: TextAlign.center,
              style: Appstyle.twelve(Colors.grey),
            ),
          ),
          SizedBox(height: 5,),
          Center(
            child: Text("Shaxsiy ma'lumotlar va sotish shartlarini",
              textAlign: TextAlign.center,
              style: Appstyle.twelve(Colors.blue),
            ),
          ),
          SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LoginCheckScreen();
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
                    child: Text("Keyinchalik",style: GoogleFonts.aladin(
                      textStyle: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    ),
                      )),
              )),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
