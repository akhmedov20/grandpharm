import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grandpharm/src/ui/menu2/card/add_card_screen.dart';
import 'package:grandpharm/src/widget/appbar/appbar_widget.dart';

import '../../../widget/textstyle/textstyle_widget.dart';
import '../profile_screen.dart';

class CardSecondScreen extends StatelessWidget {
  const CardSecondScreen({Key? key}) : super(key: key);

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
        SizedBox(height: 10,),
        ListTile(
          title: Text("8600 •••• •••• 3285",style: Appstyle.fifteen(Colors.black),),
          trailing: SvgPicture.asset("assets/icons/logo3.svg"),
        ),
        ListTile(
          title: Text("8600 •••• •••• 3285",style: Appstyle.fifteen(Colors.black),),
          trailing: SvgPicture.asset("assets/icons/logo2.svg"),
        ),
      ],),
    );
  }
}
