import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grandpharm/src/ui/login/login_data_screen.dart';
import 'package:grandpharm/src/widget/textfield/textfield_widget.dart';
import 'package:grandpharm/src/widget/textstyle/textstyle_widget.dart';

class LoginCheckScreen extends StatelessWidget {
  const LoginCheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text("Проверочный код отправлен на номер",style: Appstyle.sixteen(Colors.black),
                ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 210),
            child: Text("+998 99 *** ** 23",style: Appstyle.sixteen(Colors.black),
            ),
          ),
          SizedBox(height: 20,),
          TextFieldWidget(text: "Tasdiqlash kodi",),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginDataScreen();
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
                      child: Text("Nomerni tasdiqlang",style: GoogleFonts.aladin(
                          textStyle: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      )),
                )),
          )
        ],
      ),
    );
  }
}
